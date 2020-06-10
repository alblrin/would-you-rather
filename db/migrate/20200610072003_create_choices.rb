class CreateChoices < ActiveRecord::Migration[6.0]
  def change
    create_table :choices do |t|
      t.string :first_choice
      t.string :second_choice
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
