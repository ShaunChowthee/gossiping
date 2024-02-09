class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :gossip
  belongs_to :parent_comment
end
