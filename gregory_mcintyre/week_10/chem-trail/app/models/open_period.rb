# == Schema Information
#
# Table name: open_periods
#
#  id          :integer          not null, primary key
#  pharmacy_id :integer
#  day         :string           not null
#  time_from   :time             default(2000-01-01 09:00:00 UTC), not null
#  time_to     :time             default(2000-01-01 17:00:00 UTC), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class OpenPeriod < ActiveRecord::Base
  belongs_to :pharmacy

  validates :pharmacy, presence: true
  validates :day, inclusion: Date::DAYNAMES
  validates :time_from, presence: true
  validates :time_to, presence: true

  def formatted
    #return "Monday: 9:00 AM - 5:00 PM"
  end

  def covers?(time = Time.now)
  end
end
