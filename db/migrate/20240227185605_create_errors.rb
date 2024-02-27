class CreateErrors < ActiveRecord::Migration[7.0]
  def change
    create_table :errors do |t|
      t.string :message
      t.string :stack
      t.string :domain
      t.string :filename
      t.string :referrer
      t.string :href
      t.integer :lineno
      t.integer :colno
      t.datetime :date
      t.uuid :user_id

      t.timestamps
    end
  end
end
