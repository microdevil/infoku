class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  validates :name, :phone, :current_job, :address, presence: true
  validates :security_code, presence: true, on: :create
  validates_format_of :security_code, with: /191014280991/, on: :create
  attr_accessor :security_code

  scope :confirmed, -> { where("confirmed_at IS NOT NULL") }
end