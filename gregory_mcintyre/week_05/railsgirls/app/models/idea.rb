class Idea < ActiveRecord::Base
  # checks to make sure name is not "" or nil
  # does the check when calling save or create (and a few others)
  validates :name, presence: true
end