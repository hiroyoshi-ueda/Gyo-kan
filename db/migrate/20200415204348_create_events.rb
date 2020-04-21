# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.integer :admin_id, null: false
      t.string :title, null: false
      t.datetime :start_datetime, null: false
      t.datetime :end_datetime, null: false
      t.integer :time, null: false
      t.text :introduction, null: false
      t.text :comment
      t.string :image_id
      t.boolean :validity, null: false, default: true
      t.integer :limit_count

      t.timestamps
    end
  end
end
