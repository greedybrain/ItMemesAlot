class Reply < ApplicationRecord

  # SOC => It is the concern of the reply to know about the comments and the user it belongs to

  belongs_to :user # reply.user => <#0435764856i User>
  belongs_to :comment # reply.comment => <#0435764856i Comment>
end
