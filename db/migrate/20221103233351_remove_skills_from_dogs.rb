class RemoveSkillsFromDogs < ActiveRecord::Migration[7.0]
  def change
    remove_column :dogs, :skills, :string
  end
end
