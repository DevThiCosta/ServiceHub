class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.references :appointment, null: false, foreign_key: true
      t.decimal :amount
      t.datetime :payment_date
      t.string :payment_method

      t.timestamps
    end
  end
end
