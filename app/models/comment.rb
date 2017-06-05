class Comment < ActiveRecord::Base
  belongs_to :base
  belongs_to :user
end
