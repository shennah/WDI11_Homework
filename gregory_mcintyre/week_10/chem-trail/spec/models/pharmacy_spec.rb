require 'rails_helper'

RSpec.describe Pharmacy, type: :model do
  describe '#open_periods_formatted' do
    it 'should format open periods in a table' do
      pharmacy = FactoryGirl.create(:pharmacy, open_periods: [
          OpenPeriod.new(day: "Monday", time_from: "09:00", time_to: "17:00"),
          OpenPeriod.new(day: "Tuesday", time_from: "09:00", time_to: "17:00"),
          OpenPeriod.new(day: "Wednesday", time_from: "09:00", time_to: "17:00"),
          OpenPeriod.new(day: "Thursday", time_from: "09:00", time_to: "21:00"),
          OpenPeriod.new(day: "Friday", time_from: "09:00", time_to: "17:00"),
        ]
      )

      expect(pharmacy.open_periods_formatted).to eq(
        "Monday: 9:00 AM - 5:00 PM\n" +
        "Tuesday: 9:00 AM - 5:00 PM\n" +
        "Wednesday: 9:00 AM - 5:00 PM\n" +
        "Thursday: 9:00 AM - 9:00 PM\n" +
        "Friday: 9:00 AM - 5:00 PM\n" +
        "Saturday: CLOSED\n" +
        "Sunday: CLOSED\n"
      )
    end
  end
end
