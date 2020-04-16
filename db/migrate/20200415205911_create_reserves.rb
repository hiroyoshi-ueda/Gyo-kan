# frozen_string_literal: true

class CreateReserves < ActiveRecord::Migration[5.2]
  def change
    create_table :reserves do |t|
      t.integer :user_id, null: false
      t.integer :event_id, null: false
      t.datetime :start_datetime, null: false
      t.integer :join_count, null: false
      t.text :cancel_request, null: false

      t.timestamps
    end
  end
end
