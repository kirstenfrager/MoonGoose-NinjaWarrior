class AddAttachmentImagedocumentToPackages < ActiveRecord::Migration
  def self.up
    change_table :packages do |t|
      t.attachment :image
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :packages, :image, :document
  end
end
