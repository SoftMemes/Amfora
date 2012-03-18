class Post < ActiveRecord::Base
  belongs_to :author, :class_name => 'User'
  belongs_to :reply_to, :class_name => 'Post', :inverse_of => :replies
  has_many :replies, :class_name => 'Post', :foreign_key => 'reply_to_id', :inverse_of => :reply_to

  attr_accessible :author_id, :reply_to_id, :subject, :body
end
