class RandolphController < ApplicationController
  def main
    @partners_path = randolph_partners_path
    screen_vars = ScreenVar.new('WEDNESDAY', 'RANDOLPH')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Randolph'
    @promo = 'Randolph'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
