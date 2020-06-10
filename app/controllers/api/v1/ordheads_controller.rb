class Api::V1::OrdheadsController < ApplicationController

  def api
    promo = params[:promo]
    orders = Ordhead.where("order_stat < '18'").where(billadd3: promo)
    if orders.length > 14
      case promo
      when 'BASKINGRIDGE'
        location = 'BASKING RIDGE'
      when 'BOONTON'
        location = 'BOONTON'
      when 'ENGLWOOD'
        location = 'ENGLEWOOD'
      when 'GALLOWAY'
        location = 'GALLOWAY'
      when 'MALDEN'
        location = 'MALDEN'
      when 'MAPLEWOOD'
        location = 'MAPLEWOOD'
      when 'MIDDLETOWN'
        location = 'MIDDLETOWN'
      when 'MONTCLAIR'
        location = 'MONTCLAIR'
      when 'RANDOLPH'
        location = 'RANDOLPH'
      when 'RIDGEWOOD'
        location = 'RIDGEWOOD'
      when 'STRATFORD'
        location = 'STRATFORD'
      when 'TENAFLY'
        location = 'TENAFLY'
      when 'WATCHUNG'
        location = 'WATCHUNG'
      when 'WESTORANGE'
        location = 'WEST ORANGE'
      else
        location = 'WESTFIELD'
      end
      sorted_orders = orders.sort_by { |p| p.order_date }
      fifteenth_order_date = sorted_orders[14].order_date
      delivery_date = fifteenth_order_date + 2.days
      cutoff_date = fifteenth_order_date + 1.day
      delivery_day = delivery_date.strftime("%A").upcase
      cutoff_day = cutoff_date.strftime("%A %B %d")
      @message = "Congratulations - THE " + location + " TRUCK IS SCHEDULED and will be in town " + delivery_day + ".<br /><br />It's not too late to add an order - simply place your order before 4:00pm " + cutoff_day + " using the instructions above."
    elsif orders.length == 14
      @message = 'Good news: Our community only needs 1 more order to fill the truck!'
    else
      x = 15 - orders.length
      @message = 'Good news: Our community only needs ' + x.to_s + ' more orders to fill the truck!'
    end
  end

end
