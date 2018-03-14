class CreateCheckouts < ActiveRecord::Migration[5.0]
  def change
    create_table :checkouts do |t|
      t.integer :book_id
      t.string :title
      t.string :author
      t.datetime :borrowed_at
      t.string :returned_at
      t.string :datetime

      t.timestamps
    end
  end
end
