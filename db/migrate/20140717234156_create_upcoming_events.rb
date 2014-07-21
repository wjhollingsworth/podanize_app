class CreateUpcomingEvents < ActiveRecord::Migration
  def change
    create_table :upcoming_events do |t|
      t.string :name
      t.text :content
      t.integer :newsletter_id

      t.timestamps
    end
  end
end
