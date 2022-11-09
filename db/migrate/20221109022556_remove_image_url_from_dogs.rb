class RemoveImageUrlFromDogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :dogs, :image_url, :string
  end
end
