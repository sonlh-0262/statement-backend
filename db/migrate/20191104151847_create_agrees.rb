class CreateAgrees < ActiveRecord::Migration[5.2]
  def change
    create_table :agrees do |t|
      t.references :user, foreign_key: true
      t.references :statement, foreign_key: true
      t.boolean :like

      t.timestamps
    end
  end
end
