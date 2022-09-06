class CreateSchedules < ActiveRecord::Migration[7.0]
  def change
    create_table :schedules do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime

      t.timestamps
    end
  end
end
