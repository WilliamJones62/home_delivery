class RivervaleController < ApplicationController
  def main
    @partners_path = rivervale_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'RIVERVALE')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'River Vale'
    @promo = 'Rivervale'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
