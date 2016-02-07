class User < ActiveRecord::Base
    has_many :user_files, dependent: :destroy
    validates :name, presence: true
    validates :email, presence: true, uniqueness: true
end
