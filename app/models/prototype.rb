class Prototype < ActiveRecord::Base
  has_many :images
  has_many :likes
  has_many :tags

  accepts_nested_attributes_for :images

end
