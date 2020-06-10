class CranfordController < ApplicationController
  def main
    @partners_path = cranford_partners_path
    screen_vars = ScreenVar.new('FRIDAY', 'CRANFORD')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Cranford'
    @promo = 'Cranford'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
