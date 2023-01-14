class RemoveAddressFromDogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :dogs, :address, :string
  end
end
