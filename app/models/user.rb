class User < ApplicationRecord

     has_secure_password

     # SOC => It is the concern of the user to know about their posts

     has_many :posts # owned posts ( user.posts => [] )
     # has_many :followers
     # has_many :is_followings
     # belongs_to :follower, optional: true
end
