class Album < ActiveRecord::Base
  attr_accessible :name, :photos_attributes
  validates_presence_of :name
  has_many :photos, :dependent => :destroy
  belongs_to :user
 
  accepts_nested_attributes_for :photos
end
