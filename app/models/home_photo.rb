class HomePhoto < ApplicationRecord
belongs_to :home
  has_attached_file :image
                    
                    
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
                    
                   

end
