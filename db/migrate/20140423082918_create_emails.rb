class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.belongs_to :app, index: true, null: false
      t.string :from, null: false
      t.string :to, null: false
      t.string :cc
      t.string :bcc
      t.string :subject
      t.text :text_part, null: false
      t.text :html_part
      t.timestamps

      t.index :from
      t.index :to
      t.index :subject
    end
  end
end
