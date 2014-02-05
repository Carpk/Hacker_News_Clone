class Comment < ActiveRecord::Base
  # Remember to create a migration!
  def author
    User.find_by_id(self.user_id).name
  end
end
