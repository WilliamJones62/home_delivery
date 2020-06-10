class RoutetoteController < ApplicationController
  def main
    @report_lines = []
    route = {}
    @total_preshipped_sales = 0
    @total_preshipped_sales_count = 0
    @total_preshipped_total_sales = 0
    @total_preshipped_total_sales_count = 0
    @order_numb = 0
    sales = Sale.where("order_stat < ?", 18)
    filtered_sales = []
    sales.each do |s|
      if !s.route_code.blank?
        filtered_sales.push(s)
      end
    end
    sorted_sales = filtered_sales.sort_by { |s| s.route_code }
    @route_code = sorted_sales.first.route_code
    @route_sales = []
    @new_route = true
    @next_delivery = ' '
    dueout = ' '
    sorted_sales.each do |s|
      # sorted by route
      if @route_code != s.route_code
        # new route
        report_detail
        @route_code = s.route_code
        @route_sales.push(s)
      end
      if @new_route
        @new_route = false
        delivery_day = s.dueout_date.strftime("%^A")
        case delivery_day
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
        @route_code = s.route_code
      end
      @route_sales.push(s)
    end
    #  need to process last route
    if @route_sales.length > 0
      # but only if there are sales
      report_detail
    end
    route[:region] = '** TOTALS **'
    route[:route] = ''
    route[:ship_date] = ''
    route[:preshipped_sales] = @total_preshipped_sales.round(2)
    route[:preshipped_count] = @total_preshipped_sales_count.round(2)
    route[:preshipped_total_sales] = @total_preshipped_total_sales.round(2)
    route[:preshipped_total_count] = @total_preshipped_total_sales_count.round(2)
    @report_lines.push(route)
  end

  private

    def report_detail
      sorted_orders = @route_sales.sort_by { |r| r.order_numb }
      preshipped_sales = 0
      preshipped_count = 0
      preshipped_total_sales = 0
      preshipped_total_count = 0
      sorted_orders.each do |o|
        dueout = o.dueout_date.strftime("%D")
        if @order_numb != o.order_numb
          @order_numb = o.order_numb
          if @next_delivery == dueout
            preshipped_count += 1
          end
          preshipped_total_count += 1
        end
        if @next_delivery == dueout
          preshipped_sales += o.ext_price
        end
        preshipped_total_sales += o.ext_price
      end
      town = Town.find_by route_code: @route_code
      route = {}
      if town
        route[:region] = town.region
      else
        route[:region] = "Missing"
      end
      route[:route] = @route_code
      route[:ship_date] = sorted_orders.first.dueout_date
      route[:preshipped_sales] = preshipped_sales.round(2)
      route[:preshipped_count] = preshipped_count.round(2)
      route[:preshipped_total_sales] = preshipped_total_sales.round(2)
      route[:preshipped_total_count] = preshipped_total_count.round(2)
      @report_lines.push(route)
      @total_preshipped_sales += preshipped_sales
      @total_preshipped_sales_count += preshipped_count
      @total_preshipped_total_sales += preshipped_total_sales
      @total_preshipped_total_sales_count += preshipped_total_count
      @route_sales = []
      @new_route = true
    end
end
