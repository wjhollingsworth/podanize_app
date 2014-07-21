class CreatePtaHappenings < ActiveRecord::Migration
  def change
    create_table :pta_happenings do |t|
      t.string :name
      t.text :content
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
