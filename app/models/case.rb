class Case < ActiveRecord::Base
  has_one :incident
  belongs_to :user

  validates :name, presence: true
  validates :main_type, presence: true
  validates :sub_type, presence: true
end
