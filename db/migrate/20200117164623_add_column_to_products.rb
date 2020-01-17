class AddColumnToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column(:products, :name, :string)
    add_column(:products, :cost, :integer)
    add_column(:products, :country_of_origin, :string)
  end
end
