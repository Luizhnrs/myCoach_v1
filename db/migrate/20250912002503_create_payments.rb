class CreatePayments < ActiveRecord::Migration[8.0]
  def change
    create_table :payments do |t|
      t.decimal :amount
      t.string :status
      t.integer :lesson_id
      t.string :payment_method

      t.timestamps
    end
  end
end
