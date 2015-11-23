class User < ActiveRecord::Base
  has_secure_password
	validates :id_number, presence: true
	validates :id_number, uniqueness: true
end
