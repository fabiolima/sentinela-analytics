class CreateErrors < ActiveRecord::Migration[7.0]
  def change
    create_table :errors, id: :uuid do |t|

      t.string :source
      t.boolean :mobile
      t.string :platform
      t.string :app_version
      t.string :user_agent
      t.integer :width
      t.integer :height
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
