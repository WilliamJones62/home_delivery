class HastingsonhudsonController < ApplicationController
  def main
    @partners_path = hastingsonhudson_partners_path
    screen_vars = ScreenVar.new('SATURDAY', 'HASTINGS-ON-HUDSON')
    @message = screen_vars.message
    @rep_contact = screen_vars.rep_contact
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Hastings-on-Hudson'
    @promo = 'Hastingsonhudson'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
