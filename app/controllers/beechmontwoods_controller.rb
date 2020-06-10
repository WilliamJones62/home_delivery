class BeechmontwoodsController < ApplicationController
  def main
    @partners_path = beechmontwoods_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'BEECHMONTWOODS')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Beechmont Woods'
    @promo = 'Beechmontwoods'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
