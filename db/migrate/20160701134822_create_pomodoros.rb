class CreatePomodoros < ActiveRecord::Migration[5.0]
  def change
    create_table :pomodoros do |t|
      t.integer :score
      t.datetime :used_at

      t.timestamps
    end
  end
end
