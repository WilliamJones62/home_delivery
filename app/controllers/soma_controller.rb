class SomaController < ApplicationController
  def main
    @partners_path = soma_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'SOMA')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'South Orange/Maplewood'
    @promo = 'SOMA'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
