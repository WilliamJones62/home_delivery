class EastwindsorController < ApplicationController
  def main
    @partners_path = eastwindsor_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'EASTWINDSOR')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'East Windsor'
    @promo = 'Eastwindsor'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
