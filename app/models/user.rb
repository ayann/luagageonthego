class User < ActiveRecord::Base
	attr_accessor :gauth_token
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :google_authenticatable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

	validates :last_name, :first_name, presence: true

	after_save do
		self.pseudo = "#{first_name[0]}.#{last_name}"
	end
end
