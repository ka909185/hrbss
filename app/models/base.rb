class Base < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :organization
  belongs_to :koyou
  belongs_to :sikaku
  belongs_to :status
  belongs_to :yakushoku
  belongs_to :user
  has_many :workmanages, foreign_key: "emp_id", dependent: :destroy
  has_many :reverse_workmanages, foreign_key: "manager_id", class_name: "Workmanage", dependent: :destroy
  has_many :manager_users, through: :workmanages, source: :maneger
  has_many :emp_users, through: :reverse_workmanages, source: :emp
  has_many :comments, dependent: :destroy
  def self.search(search)
    if search
      Base.where(['name LIKE ?',"%#{search}%"])
    else
      Base.all
    end
  end

  def age
    date_format = "%Y%m%d"
    (Date.today.strftime(date_format).to_i - birthday.strftime(date_format).to_i) / 10000
  end
end
