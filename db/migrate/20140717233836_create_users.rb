class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :school
      t.text :bio

      t.timestamps
    end
  end
end
