class CreateAppointments < ActiveRecord::Migration[7.1]
  def change
    create_table :appointments do |t|
      t.references :user, null: false, foreign_key: true
      t.references :contractor, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.datetime :appointment_date
      t.boolean :payment_status
      t.boolean :reminder_sent
      t.text :notes

      t.timestamps
    end
  end
end
