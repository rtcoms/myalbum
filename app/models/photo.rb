require 'paperclip'

 
class Photo < ActiveRecord::Base
  belongs_to :album

  acts_as_taggable
 
  has_attached_file :data, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  validates_attachment_content_type :data, :content_type => 'image/jpeg', :message => "has to be in jpeg format"
end
