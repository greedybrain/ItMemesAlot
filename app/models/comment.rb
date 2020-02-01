class Comment < ApplicationRecord

      # SOC => It is the concern of the comment to know about its replies and the user it belongs to

     belongs_to :post # comment.post => <#0435764856i Post>
     belongs_to :user # comment.user => <#0435764856i User>
     has_many :replies # comment.replies => []
     has_many :users, through: :replies # comment.users => []

end
