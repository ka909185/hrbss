class Koyou < ActiveRecord::Base
  has_many :bases, dependent: :destroy

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      koyou = find_by(id: row["id"]) || new
      koyou.attributes = row.to_hash.slice(*updatable_attributes)
      koyou.save!
    end
  end

  def self.updatable_attributes
    ["koyoukubun"]
  end
end
