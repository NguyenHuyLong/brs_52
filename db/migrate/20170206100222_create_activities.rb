class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.integer :object_id
      t.integer :object_type
      t.integer :action_type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
