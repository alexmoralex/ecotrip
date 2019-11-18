class AddGuiaToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :guia, :boolean
  end
end
