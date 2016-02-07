class User < ActiveRecord::Base
    has_many :user_files, dependent: :destroy
    validates :name, presence: true
    validates :password, presence: true, length: {minimum: 8}
    validates :email, presence: true, uniqueness: true
end
