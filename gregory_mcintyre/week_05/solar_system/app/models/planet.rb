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

class Planet < ActiveRecord::Base
  validates :name, presence: true
end
