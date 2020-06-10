module ApplicationHelper
  def display_date(date)
    if date
      formatted = date.strftime("%A")
    else
      formatted = ' '
    end
  end
end
