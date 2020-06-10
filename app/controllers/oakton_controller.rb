class OaktonController < ApplicationController
  def main
    @partners_path = oakton_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'OAKTON')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Oakton'
    @promo = 'Oakton'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
