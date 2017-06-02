class Koyou < ActiveRecord::Base
  has_many :bases, dependent: :destroy
end
