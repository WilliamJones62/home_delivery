class ApplicationController < ActionController::Base
  class ScreenVar
    attr_accessor :week_day
    attr_accessor :location

    def initialize(week_day, location)
      self.week_day = week_day
      self.location = location
    end

    def rep_name
      town = Town.find_by coupon_code: self.location
      town.town_rep
    end

    def rep_contact
      town = Town.find_by coupon_code: self.location
      town.contact_info
    end

    def message
      "THE #{self.location} TRUCK IS SCHEDULED and will be in town #{self.week_day}."
    end

    def cutoff_day
      case self.week_day
      when 'SUNDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:sunday)
      when 'MONDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:monday)
      when 'TUESDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:tuesday)
      when 'WEDNESDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:wednesday)
      when 'THURSDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:thursday)
      when 'FRIDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:friday)
      when 'SATURDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:saturday)
      end
      cutoff_date = next_delivery_date - 2.days
      if cutoff_date < Date.today || (cutoff_date == Date.today && Time.now > Time.now.beginning_of_day + 12.hours)
        cutoff_date = cutoff_date + 7.days
      end
      cutoff_date.strftime("%A, %B %d")
    end

    def delivery_day
      case self.week_day
      when 'SUNDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:sunday)
      when 'MONDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:monday)
      when 'TUESDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:tuesday)
      when 'WEDNESDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:wednesday)
      when 'THURSDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:thursday)
      when 'FRIDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:friday)
      when 'SATURDAY'
        next_delivery_date = (Date.today + 1.week).beginning_of_week(:saturday)
      end
      cutoff_date = next_delivery_date - 2.days
      if cutoff_date < Date.today || (cutoff_date == Date.today && Time.now > Time.now.beginning_of_day + 12.hours)
        next_delivery_date = next_delivery_date + 7.days
      end
      next_delivery_date.strftime("%A, %B %d")
    end

  end
end
