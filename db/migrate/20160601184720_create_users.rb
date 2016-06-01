class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :company
      t.string :email
      t.string :phone
      t.text   :message

      t.timestamps null: false
    end
  end
end
