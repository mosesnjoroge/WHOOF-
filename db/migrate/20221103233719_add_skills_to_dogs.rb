class AddSkillsToDogs < ActiveRecord::Migration[7.0]
  def change
    add_column :dogs, :skills, :text, array: true, default: []
  end
end
