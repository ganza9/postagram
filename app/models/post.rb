class Post < ApplicationRecord
  validates :user_id, presence: true
  validates :image, presence: true
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_attached_file :image, styles: { :medium => "640x" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/
end
