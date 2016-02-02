class Prototype < ActiveRecord::Base
  has_many :images
  has_many :likes
  has_many :tags
  has_many :comments
  belongs_to :user

  accepts_nested_attributes_for :images
  acts_as_taggable

  validates :title, presence: true

  def main_image
    images.main.first
  end

  def sub_images
    images.sub
  end

  def fetch_curret_user_like(user_id)
    likes.find_by(user_id: user_id)
  end

end
