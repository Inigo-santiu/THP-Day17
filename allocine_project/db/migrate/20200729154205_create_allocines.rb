class CreateAllocines < ActiveRecord::Migration[5.2]
  def change
    create_table :allocines do |t|
      t.string :name
      t.integer :year
      t.string :genre
      t.string :synopsis
      t.string :director
      t.float :allocine_rating
      t.string :my_rating
      t.boolean :already_seen

      t.timestamps
    end
  end
end
