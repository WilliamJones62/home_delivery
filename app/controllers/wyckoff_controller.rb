class WyckoffController < ApplicationController
  def main
    @partners_path = wyckoff_partners_path
    screen_vars = ScreenVar.new('THURSDAY', 'WYCKOFF')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Wyckoff'
    @promo = 'Wyckoff'
    @rep_name = screen_vars.rep_name
    @rep_contact = screen_vars.rep_contact
  end

  def partners
  end
end
