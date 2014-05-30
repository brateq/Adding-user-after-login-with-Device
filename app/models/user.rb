class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  before_validation :generate_pwd
  
  def generate_pwd
    your_generated_pwd = '12345678'
    self.password = your_generated_pwd
  end
end
