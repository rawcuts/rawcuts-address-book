class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string :name
      t.string :email
      t.string :business_phone
      t.string :home_phone
      t.text :business_address
      t.text :home_address
      t.text :notes

      t.timestamps null: false
    end
  end
end
