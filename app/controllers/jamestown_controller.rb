class JamestownController < ApplicationController
  def main
    @partners_path = jamestown_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'JAMESTOWN')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Jamestown'
    @promo = 'Jamestown'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
