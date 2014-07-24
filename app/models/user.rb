class User < ActiveRecord::Base
  
  has_many :pins

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, #:recoverable, 
         :rememberable, :trackable, :validatable

   private

   def user_params
   		 params.require(:user).permit(:name, :email, :password, :password_confirmation, :remember_me)
   end
end
