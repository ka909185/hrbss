class Yakushoku < ActiveRecord::Base
  has_many :bases, dependent: :destroy
end
