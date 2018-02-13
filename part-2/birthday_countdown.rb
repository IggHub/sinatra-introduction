class BirthdayCountdown
  def initialize(month, day)
    @birthday_month = month
    @birthday_day = day
    @month = Time.now.month
    @day = Time.now.day
    @year = Time.now.year
  end

  def is_it?
    @month == @birthday_month && @day == @birthday_day
  end

  def seconds_to_go
    next_birthday.to_i - Time.now.to_i
  end

  def to_view
    is_it? ? :yes : :no
  end
end
