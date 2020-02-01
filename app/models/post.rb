class Post < ApplicationRecord

     # SOC => It is the concern of the post to know about its comments and the user it belongs to

     belongs_to :user # post.user => <#0435764856i User>
     has_many :comments # post.comments => []
     has_many :users, through: :comments # post.users => []
end
