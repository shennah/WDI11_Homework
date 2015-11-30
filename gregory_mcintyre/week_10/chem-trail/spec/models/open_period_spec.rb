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

require 'rails_helper'

RSpec.describe OpenPeriod, type: :model do
  describe '#formatted' do
    it 'should format the output as "Monday 9:00 AM - 5:00 PM" given the day is Monday, and the times are 9-5' do
      period = OpenPeriod.new(day: "Monday", time_from: "09:00", time_to: "17:00")
      expect(period.formatted).to eq "Monday: 9:00 AM - 5:00 PM"
    end
  end
end
