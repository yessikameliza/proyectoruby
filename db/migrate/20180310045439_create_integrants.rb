class CreateIntegrants < ActiveRecord::Migration[5.1]
  def change
    create_table :integrants do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
