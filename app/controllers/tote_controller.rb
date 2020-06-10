class ToteController < ApplicationController
  def main
    @report_lines = []
    location = {}
    towns = Town.all
    total_preshipped_sales = 0
    total_shipped_sales = 0
    total_preshipped_sales_count = 0
    total_sales_count = 0
    order_numb = 0
    towns.each do |t|
      sales = Sale.where(town: t.coupon_code)
      sorted_sales = sales.sort_by { |p| p.order_numb }
      location[:town] = t.township
      preshipped_sales = 0
      shipped_sales = 0
      sales_count = 0
      preshipped_count = 0
      sorted_sales.each do |s|
        if s.order_stat.to_i < 18
          preshipped_sales += s.ext_price
        else
          shipped_sales += s.ext_price
        end
        if order_numb != s.order_numb
          if s.order_stat.to_i < 18
            preshipped_count += 1
          end
          sales_count += 1
          order_numb = s.order_numb
        end
      end
      location[:preshipped_sales] = preshipped_sales.round(2)
      location[:shipped_sales] = shipped_sales.round(2)
      location[:preshipped_count] = preshipped_count.round(2)
      location[:sales_count] = sales_count.round(2)
      location[:ship_date] = t.delivery_day
      location[:region] = t.region
      if sales_count != 0
        average_sale = (shipped_sales + preshipped_sales)/sales_count
      else
        average_sale = 0
      end
      location[:average_sale] = average_sale.round(2)
      @report_lines.push(location)
      location = {}
      total_preshipped_sales += preshipped_sales
      total_shipped_sales += shipped_sales
      total_preshipped_sales_count += preshipped_count
      total_sales_count += sales_count
    end
    location[:region] = '** TOTALS **'
    location[:preshipped_sales] = total_preshipped_sales.round(2)
    location[:shipped_sales] = total_shipped_sales.round(2)
    location[:preshipped_count] = total_preshipped_sales_count.round(2)
    location[:sales_count] = total_sales_count.round(2)
    if total_sales_count == 0
      location[:average_sale] = 0
    else
      average_sale = (total_shipped_sales + total_preshipped_sales)/total_sales_count
      location[:average_sale] = average_sale.round(2)
    end
    @report_lines.push(location)
  end
end
