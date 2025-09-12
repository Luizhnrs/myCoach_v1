class CreateLessons < ActiveRecord::Migration[8.0]
  def change
    create_table :lessons do |t|
      t.datetime :datetime
      t.string :status
      t.integer :mentor_id
      t.integer :student_id

      t.timestamps
    end
  end
end
