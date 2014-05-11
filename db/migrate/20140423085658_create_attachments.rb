class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.belongs_to :email, index: true, null: false
      t.text :attachment
    end
  end
end
