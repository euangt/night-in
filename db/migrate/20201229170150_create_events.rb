class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.references :user, null: false, foreign_key: true
      t.references :group, null: false, foreign_key: true
      t.date :date
      t.references :options, null: false, foreign_key: true

      t.timestamps
    end
  end
end
