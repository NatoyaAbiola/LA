class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |table|
      table.integer :book_id, null: false
      table.text :body, null: false
      table.timestamps null: false
    end
  end
end
