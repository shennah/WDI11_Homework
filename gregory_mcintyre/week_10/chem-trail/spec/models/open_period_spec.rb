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
  subject(:period) { OpenPeriod.new(day: day, time_from: time_from, time_to: time_to) }

  describe '#formatted' do
    context "given Monday, 9 to 5" do
      let(:day) { "Monday" }
      let(:time_from) { "09:00" }
      let(:time_to) { "17:00" }

      it 'should format the output as "Monday: 9:00 AM - 5:00 PM"' do
        expect(period.formatted).to eq "Monday: 9:00 AM - 5:00 PM"
      end
    end

    context "when closing at 11 PM" do
      let(:day) { "Monday" }
      let(:time_from) { "09:00" }
      let(:time_to) { "23:00" }

      it 'should format the output as "Monday: 9:00 AM - 11:00 PM"' do
        expect(period.formatted).to eq "Monday: 9:00 AM - 11:00 PM"
      end
    end

  end
end
