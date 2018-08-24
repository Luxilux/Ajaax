class CreateEmails < ActiveRecord::Migration[5.2]
  def change
    create_table :emails do |t|
      t.string :objet
      t.text :body
      t.boolean :read, default: false, null: false
       
      t.timestamps
    end
  end
end
