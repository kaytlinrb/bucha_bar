class CreateTables < ActiveRecord::Migration[5.1]
  def change
    create_table :kombuchas do |t|
      t.string :name
      t.integer :cost
      t.string :origin
      t.timestamps
    end
    create_table :reviews do |t|
      t.belongs_to :kombucha, index: true
      t.string :author
      t.string :content_body
      t.integer :rating
      t.timestamps
    end
  end
end
