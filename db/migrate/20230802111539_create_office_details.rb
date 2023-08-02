class CreateOfficeDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :office_details do |t|
      t.string :name
      t.string :email
      t.string :phone_no
      t.string :tenth_mark
      t.string :twelfth_mark
      t.string :cgpa
      t.string :aadhar_no
      t.string :pan_no
      t.string :account_no
      t.integer :no_of_siblings
      t.string :first_graduate
      t.string :skills
      t.string :differently_abled
      t.string :completed_graduation

      t.timestamps
    end
  end
end
