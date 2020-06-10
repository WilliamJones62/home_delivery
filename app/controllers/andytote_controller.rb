class AndytoteController < ApplicationController
  def main
    @type = ['Total', 'Region', 'Route', 'Town']
    @name = []
    @report_lines = []
    @total_preshipped_sales = 0
    @total_preshipped_sales_count = 0
    @total_preshipped_next_sales = 0
    @total_preshipped_next_sales_count = 0
    @total_preshipped_total_sales = 0
    @total_preshipped_total_sales_count = 0
    @region_preshipped_sales = 0
    @region_preshipped_sales_count = 0
    @region_preshipped_next_sales = 0
    @region_preshipped_next_sales_count = 0
    @region_preshipped_total_sales = 0
    @region_preshipped_total_sales_count = 0
    @route_preshipped_sales = 0
    @route_preshipped_sales_count = 0
    @route_preshipped_next_sales = 0
    @route_preshipped_next_sales_count = 0
    @route_preshipped_total_sales = 0
    @route_preshipped_total_sales_count = 0
    @town_preshipped_sales = 0
    @town_preshipped_sales_count = 0
    @town_preshipped_next_sales = 0
    @town_preshipped_next_sales_count = 0
    @town_preshipped_total_sales = 0
    @town_preshipped_total_sales_count = 0
    @town_preshipped_sales = 0
    @order_numb = 0
    if session[:area_type].blank?
      sales = Summary.where("order_stat < ?", 18)
    else
      case session[:area_type]
      when 'Region'
        sales = []
        session[:area_name].each do |n|
          if !n.empty?
            s = Summary.where("order_stat < ?", 18).where("region = ?", n)
            sales += s
          end
        end
      when 'Route'
        sales = []
        session[:area_name].each do |n|
          if !n.empty?
            s = Summary.where("order_stat < ?", 18).where("route_code = ?", n)
            sales += s
          end
        end
      when 'Town'
        sales = []
        session[:area_name].each do |n|
          if !n.empty?
            s = Summary.where("order_stat < ?", 18).where("town = ?", n)
            sales += s
          end
        end
      else
        sales = Summary.where("order_stat < ?", 18)
      end
    end
    filtered_sales = []
    sales.each do |s|
      if !s.region.blank? && !s.route_code.blank? && !s.town.blank?
        filtered_sales.push(s)
      end
    end
    sorted_sales = filtered_sales.sort_by { |s| [s.region, s.route_code, s.town] }
    @totals_list = []
    @regions_list = []
    @routes_list = []
    @towns_list = []
    towns = Town.all
    towns.each do |t|
      if !@regions_list.include?(t.region)
        @regions_list.push(t.region)
      end
      if !@routes_list.include?(t.route_code)
        @routes_list.push(t.route_code)
      end
      if !@towns_list.include?(t.coupon_code)
        @towns_list.push(t.coupon_code)
      end
    end
    @regions_list.sort!
    @routes_list.sort!
    @towns_list.sort!
    if !sorted_sales.blank?
      @region = sorted_sales.first.region
      @route_code = sorted_sales.first.route_code
      @town = sorted_sales.first.town
      @next_delivery = ' '
      @delivery_day = sorted_sales.first.dueout_date.strftime("%^A")
      set_next_delivery
      sorted_sales.each do |s|
        # sorted by region
        if @region != s.region
          # new route
          region_detail
        end
        if @route_code != s.route_code
          # new route
          route_detail
        end
        if @town != s.town
          # new town
          town_detail
          @delivery_day = s.dueout_date.strftime("%^A")
          set_next_delivery
          @town = s.town
          @route_code = s.route_code
          @region = s.region
        end
        @dueout = s.dueout_date.strftime("%D")
        if @next_delivery == @dueout
          @town_preshipped_sales_count += s.no_orders
          @route_preshipped_sales_count += s.no_orders
          @region_preshipped_sales_count += s.no_orders
          @total_preshipped_sales_count += s.no_orders
          @town_preshipped_sales += s.ext_price
          @route_preshipped_sales += s.ext_price
          @region_preshipped_sales += s.ext_price
          @total_preshipped_sales += s.ext_price
        else
          @town_preshipped_next_sales_count += s.no_orders
          @route_preshipped_next_sales_count += s.no_orders
          @region_preshipped_next_sales_count += s.no_orders
          @total_preshipped_next_sales_count += s.no_orders
          @town_preshipped_next_sales += s.ext_price
          @route_preshipped_next_sales += s.ext_price
          @region_preshipped_next_sales += s.ext_price
          @total_preshipped_next_sales += s.ext_price
        end
        @town_preshipped_total_sales_count += s.no_orders
        @route_preshipped_total_sales_count += s.no_orders
        @region_preshipped_total_sales_count += s.no_orders
        @total_preshipped_total_sales_count += s.no_orders
        @town_preshipped_total_sales += s.ext_price
        @route_preshipped_total_sales += s.ext_price
        @region_preshipped_total_sales += s.ext_price
        @total_preshipped_total_sales += s.ext_price
      end
      #  need to process last region, route and town
      town_detail
      route_detail
      region_detail
      route = {}
      route[:region] = '** TOTALS **'
      route[:route] = ''
      route[:town] = ''
      route[:ship_date] = ''
      route[:this_date] = ''
      route[:next_date] = ''
      route[:preshipped_sales] = @total_preshipped_sales.round(2)
      route[:preshipped_count] = @total_preshipped_sales_count
      route[:preshipped_next_sales] = @total_preshipped_next_sales.round(2)
      route[:preshipped_next_count] = @total_preshipped_next_sales_count
      route[:preshipped_total_sales] = @total_preshipped_total_sales.round(2)
      route[:preshipped_total_count] = @total_preshipped_total_sales_count
      @report_lines.push(route)
    end
  end

  def selected
    session[:area_type] = params[:area_type]
    session[:area_name] = params[:area_name]
    redirect_to action: "main"
  end

  private

    def set_next_delivery
      case @delivery_day
      when 'SUNDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:sunday)
      when 'MONDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:monday)
      when 'TUESDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:tuesday)
      when 'WEDNESDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:wednesday)
      when 'THURSDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:thursday)
      when 'FRIDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:friday)
      when 'SATURDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:saturday)
      else
        logger.info 'Bad day = ' + delivery_day
        next_delivery_date = Date.today
      end
      @next_delivery = next_delivery_date.strftime("%D")
      @next_delivery_date = next_delivery_date
      following_delivery_date = next_delivery_date + 1.week
      @following_delivery = following_delivery_date.strftime("%D")
    end

    def region_detail
      route = {}
      route[:region] = @region
      route[:route] = '** TOTALS **'
      route[:town] = ' '
      route[:ship_date] = ''
      route[:this_date] = ''
      route[:next_date] = ''
      route[:preshipped_sales] = @region_preshipped_sales.round(2)
      route[:preshipped_count] = @region_preshipped_sales_count
      route[:preshipped_next_sales] = @region_preshipped_next_sales.round(2)
      route[:preshipped_next_count] = @region_preshipped_next_sales_count
      route[:preshipped_total_sales] = @region_preshipped_total_sales.round(2)
      route[:preshipped_total_count] = @region_preshipped_total_sales_count
      @report_lines.push(route)
      @region_preshipped_sales = 0
      @region_preshipped_sales_count = 0
      @region_preshipped_next_sales = 0
      @region_preshipped_next_sales_count = 0
      @region_preshipped_total_sales = 0
      @region_preshipped_total_sales_count = 0
    end

    def route_detail
      route = {}
      route[:region] = @region
      route[:route] = @route_code
      route[:town] = '** TOTALS **'
      route[:ship_date] = @delivery_day
      route[:this_date] = @next_delivery
      route[:next_date] = @following_delivery
      route[:preshipped_sales] = @route_preshipped_sales.round(2)
      route[:preshipped_count] = @route_preshipped_sales_count
      route[:preshipped_next_sales] = @route_preshipped_next_sales.round(2)
      route[:preshipped_next_count] = @route_preshipped_next_sales_count
      route[:preshipped_total_sales] = @route_preshipped_total_sales.round(2)
      route[:preshipped_total_count] = @route_preshipped_total_sales_count
      @report_lines.push(route)
      @route_preshipped_sales = 0
      @route_preshipped_sales_count = 0
      @route_preshipped_next_sales = 0
      @route_preshipped_next_sales_count = 0
      @route_preshipped_total_sales = 0
      @route_preshipped_total_sales_count = 0
    end

    def town_detail
      route = {}
      route[:region] = @region
      route[:route] = @route_code
      route[:town] = @town
      route[:ship_date] = @delivery_day
      route[:this_date] = @next_delivery
      route[:next_date] = @following_delivery
      route[:preshipped_sales] = @town_preshipped_sales.round(2)
      route[:preshipped_count] = @town_preshipped_sales_count
      route[:preshipped_next_sales] = @town_preshipped_next_sales.round(2)
      route[:preshipped_next_count] = @town_preshipped_next_sales_count
      route[:preshipped_total_sales] = @town_preshipped_total_sales.round(2)
      route[:preshipped_total_count] = @town_preshipped_total_sales_count
      @report_lines.push(route)
      @town_preshipped_sales = 0
      @town_preshipped_sales_count = 0
      @town_preshipped_next_sales = 0
      @town_preshipped_next_sales_count = 0
      @town_preshipped_total_sales = 0
      @town_preshipped_total_sales_count = 0
    end

end
