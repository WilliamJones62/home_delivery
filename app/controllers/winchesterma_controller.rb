class WinchestermaController < ApplicationController
  def main
    @partners_path = winchesterma_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'WINCHESTERMA')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Winchester, MA'
    @promo = 'Winchesterma'
  end

  def partners
  end
end
