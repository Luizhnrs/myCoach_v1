class CreateMentorships < ActiveRecord::Migration[8.0]
  def change
    create_table :mentorships do |t|
      t.integer :mentor_id
      t.integer :student_id

      t.timestamps
    end
  end
end
