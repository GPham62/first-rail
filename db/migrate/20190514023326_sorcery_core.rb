class SorceryCore < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :email,            :null => false
      t.string :crypted_password,
      t.string :salt,             
      t.string :username,         
      t.timestamps              
    end

    add_index :authors, :email, unique: true
  end
end
