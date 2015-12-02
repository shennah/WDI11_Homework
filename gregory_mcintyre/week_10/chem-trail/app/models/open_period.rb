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
  belongs_to :pharmacy, inverse_of: :open_periods

  validates :pharmacy, presence: true
  validates :day, inclusion: Date::DAYNAMES
  validates :time_from, presence: true
  validates :time_to, presence: true

  def formatted
    t1 = time_from.strftime('%l:%M %p').strip
    t2 = time_to.strftime('%l:%M %p').strip
    "#{day}: #{t1} - #{t2}"
  end

  def covers?(time = Time.now)
  end
end
