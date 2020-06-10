class HopkintonController < ApplicationController
  def main
    @partners_path = hopkinton_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'HOPKINTON')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Hopkinton'
    @promo = 'Hopkinton'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
