class Package < ApplicationRecord
  belongs_to :user

# paperclip code for images
  has_attached_file :image, styles: { large: "600x600", medium: "300x300", thumbnail: "150x150#" }
  validates :image, :attachment_content_type => { :content_type => ['image/png', 'image/jpg', 'image/jpeg'] }

# paperclip code for pdf/word documents
  has_attached_file :document, styles: { large: "600x600", medium: "300x300", thumbnail: "100x100"}
  validates :document, :attachment_content_type => { :content_type => ['application/pdf', 'application/msword'] }

end
