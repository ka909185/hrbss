class Organization < ActiveRecord::Base
  validates :orgname, presence: true
  has_many :bases, dependent: :destroy
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      organization = find_by(id: row["id"]) || new
      organization.attributes = row.to_hash.slice(*updatable_attributes)
      organization.save!
    end
  end

  def self.updatable_attributes
    ["orgcode", "orgname"]
  end
end
