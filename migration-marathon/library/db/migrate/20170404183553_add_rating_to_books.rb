class AddRatingToBooks < ActiveRecord::Migration[5.0]
  def up
     add_column :books, :rating, :integer
   end

   def down
     remove_column :books, :rating
   end
end
