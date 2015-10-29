# == Schema Information
#
# Table name: planets
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  image       :string
#  num_moons   :integer
#  mean_radius :float
#  mass        :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  orbit       :float
#

require 'test_helper'

class PlanetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
