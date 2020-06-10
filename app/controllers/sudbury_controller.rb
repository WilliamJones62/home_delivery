class SudburyController < ApplicationController
  def main
    @partners_path = sudbury_partners_path
    screen_vars = ScreenVar.new('WEDNESDAY', 'SUDBURY')
    @message = screen_vars.message
    @delivery_day = screen_vars.delivery_day
    @cutoff_day = screen_vars.cutoff_day
    @message2 = 'NOON '+ @cutoff_day
    @location = 'Sudbury'
    @promo = 'Sudbury'
    @rep_contact = screen_vars.rep_contact
    @rep_name = screen_vars.rep_name
  end

  def partners
  end
end
