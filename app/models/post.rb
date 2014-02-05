class Post < ActiveRecord::Base
  # Remember to create a migration!
  belongs_to :user

  def comments_count
    Comment.where(post_id: self.id).count
  end
end
