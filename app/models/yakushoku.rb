class Yakushoku < ActiveRecord::Base
  has_many :bases, dependent: :destroy
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      yakushoku = find_by(id: row["id"]) || new
      yakushoku.attributes = row.to_hash.slice(*updatable_attributes)
      yakushoku.save!
    end
  end

  def self.updatable_attributes
    ["yakushokuname"]
  end
end
