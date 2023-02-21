class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string "content", limit: 1000, default: "", null: false
      t.references :post, foreign_key: true
      t.references :user, foreign_key: true
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.timestamps
    end
  end
end
