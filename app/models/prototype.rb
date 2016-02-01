class Prototype < ActiveRecord::Base
  has_many :images
  has_many :likes
  has_many :tags
  belongs_to :user

  accepts_nested_attributes_for :images

  acts_as_taggable

end
