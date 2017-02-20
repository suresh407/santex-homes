class HomeInfoEnquery < ApplicationRecord

belongs_to :home
validates_presence_of :email, :phone, :name, :comments,  :message => 'Please fill the details'

end

