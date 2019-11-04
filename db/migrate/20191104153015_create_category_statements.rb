class CreateCategoryStatements < ActiveRecord::Migration[5.2]
  def change
    create_table :category_statements do |t|
      t.references :statement, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
