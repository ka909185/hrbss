class Sikaku < ActiveRecord::Base
  has_many :bases, dependent: :destroy
end
