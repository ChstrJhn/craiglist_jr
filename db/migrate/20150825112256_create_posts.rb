class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :email
      t.decimal :price , precision: 8, scale: 2
      t.integer :category_id
      t.string :description
      t.string :secret_key
      t.timestamps null:false
      end
  end
end
