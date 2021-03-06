class User < ApplicationRecord
  has_many :rooms, dependent: :destroy
  has_one :profile

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def has_profile?
    profile.present?
  end

  def full_name
    profile.full_name
  end

end
