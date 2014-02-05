class Post < ActiveRecord::Base
  # Remember to create a migration!

  def comments_count
    Comment.where(post_id: self.id).count
  end
end
