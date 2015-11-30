# == Schema Information
#
# Table name: pharmacies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pharmacy < ActiveRecord::Base
  has_many :open_periods

  validates :name, presence: true

  # Output example:
  #   Monday: 9:00 AM - 5:00 PM
  #   ...
  #   Saturday: CLOSED
  #   Sunday: CLOSED
  def open_periods_formatted
    days = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
    result = ""
    days.each do |day|
      period = open_periods.find_by(day: day)
      if period
        result << period.formatted << "\n"
      else # closed
        result << "#{day}: CLOSED\n"
      end
    end
    return result
  end

  def open?(time = Time.now)
  end
end
