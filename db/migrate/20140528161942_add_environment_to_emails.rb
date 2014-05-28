class AddEnvironmentToEmails < ActiveRecord::Migration
  def change
    add_column :emails, :environment, :string
  end
end
