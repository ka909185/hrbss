class Dmanager < ActiveRecord::Base
  belongs_to :emp, class_name: "Base"
  belongs_to :maneger, class_name: "Base"
end
