class Ocean < ActiveRecord::Base
	validates :name, presence: true
end
