class Organization < ActiveRecord::Base
  validates :orgname, presence: true
  has_many :bases, dependent: :destroy
end
