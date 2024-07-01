class CreateContractors < ActiveRecord::Migration[7.1]
  def change
    create_table :contractors do |t|
      t.string :company_name
      t.string :contact_person
      t.string :phone_number
      t.string :email
      t.string :avatar
      t.integer :rating
      t.string :specialties
      t.string :password_hash
      t.string :website_url

      t.timestamps
    end
  end
end
