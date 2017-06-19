class Sikaku < ActiveRecord::Base
  has_many :bases, dependent: :destroy

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      sikaku = find_by(id: row["id"]) || new
      sikaku.attributes = row.to_hash.slice(*updatable_attributes)
      sikaku.save!
    end
  end

  def self.updatable_attributes
    ["shikakuname"]
  end
end
