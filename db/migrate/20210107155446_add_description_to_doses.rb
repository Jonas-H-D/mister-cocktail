class AddDescriptionToDoses < ActiveRecord::Migration[6.0]
  def change
    add_column :doses, :description, :string
    add_column :doses, :process, :string
  end
end
