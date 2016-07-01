class AddDefaultScoreToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :default_score, :integer, default: 100
  end
end
