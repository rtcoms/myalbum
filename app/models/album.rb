class Album < ActiveRecord::Base
  attr_accessible :name
  validates_presence_of :name
  has_many :photos, :dependent => :destroy
 
  accepts_nested_attributes_for :photos
end
