class Case < ActiveRecord::Base
  has_one :incident
  belongs_to :user
end
