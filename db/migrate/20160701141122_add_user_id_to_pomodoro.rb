class AddUserIdToPomodoro < ActiveRecord::Migration[5.0]
  def change
    add_column :pomodoros, :user_id, :integer
  end
end
