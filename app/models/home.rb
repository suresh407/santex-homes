class Home < ApplicationRecord
has_many :home_photos
scope :single_wide, -> { where(:home_type => "Single wide") }
  scope :double, -> { where(:home_type => "Double wide") }
  scope :triple, -> { where(:home_type => "Triple wide") }
  scope :others, -> { where(:home_type => "Others") }
  scope :hotdeals, -> { where(:home_type => "Hot deals") }
end
