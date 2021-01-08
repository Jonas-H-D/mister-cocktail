class AddCommentToReviews < ActiveRecord::Migration[6.0]
  def change
    add_column :reviews, :content, :string
    add_column :reviews, :rating, :integer
  end
end
