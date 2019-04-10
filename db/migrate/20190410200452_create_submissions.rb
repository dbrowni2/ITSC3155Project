class CreateSubmissions < ActiveRecord::Migration[5.2]
  def change
    drop_table :submissions
    create_table :submissions do |t|
      t.string :category
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
