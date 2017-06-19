class Status < ActiveRecord::Base
  has_many :bases, dependent: :destroy
  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      status = find_by(id: row["id"]) || new
      status.attributes = row.to_hash.slice(*updatable_attributes)
      status.save!
    end
  end

  def self.updatable_attributes
    ["zaishoku"]
  end
end
