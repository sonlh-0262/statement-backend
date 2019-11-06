class CreateStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :statements do |t|
      t.string :title
      t.text :description
      t.string :place
      t.text :lat
      t.text :lng
      t.integer :agree_count
      t.integer :comment_count
      t.references :user, foreign_key: true
    
      t.timestamps
    end
  end
end
