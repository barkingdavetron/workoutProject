class CreateUserworkouts < ActiveRecord::Migration[8.0]
  def change
    create_table :userworkouts do |t|
      t.string :exercise
      t.references :User, null: false, foreign_key: true

      t.timestamps
    end
  end
end
