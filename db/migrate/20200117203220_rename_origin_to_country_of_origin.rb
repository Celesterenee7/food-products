class RenameOriginToCountryOfOrigin < ActiveRecord::Migration[5.2]
  def change
    rename_column :products, :origin, :country_of_origin
  end
end
