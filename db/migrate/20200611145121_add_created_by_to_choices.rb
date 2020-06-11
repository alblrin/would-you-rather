class AddCreatedByToChoices < ActiveRecord::Migration[6.0]
  def change
    add_column :choices, :created_by, :string
  end
end
