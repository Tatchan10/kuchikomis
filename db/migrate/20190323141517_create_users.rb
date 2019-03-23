class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.integer :sex
      t.string :image_user
      t.string :introduce
      t.string :email
      t.string :password_digest


      t.timestamps
    end
  end
end
