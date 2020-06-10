class BrookevilleController < ApplicationController
  def main
    @partners_path = brookeville_partners_path
    screen_vars = ScreenVar.new('WEDNESDAY', 'BROOKEVILLE')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Brookeville'
    @promo = 'Brookeville'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
