class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name, null: false
      t.string :token, null: false, unique: true
      t.timestamps

      t.index :token
      t.index :name
    end
  end
end
