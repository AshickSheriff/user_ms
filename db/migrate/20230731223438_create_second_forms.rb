class CreateSecondForms < ActiveRecord::Migration[7.0]
  def change
    create_table :second_forms do |t|
      t.string :name
      t.string :phone
      t.string :mail
      t.string :temp_door_no
      t.string :temp_street_name
      t.string :temp_landmark
      t.string :temp_post
      t.string :temp_district
      t.string :temp_state
      t.string :temp_pincode
      t.string :perm_door_no
      t.string :perm_street_name
      t.string :perm_landmark
      t.string :perm_post
      t.string :perm_district
      t.string :perm_state
      t.string :perm_pincode
      t.string :ref_name
      t.string :ref_contact
      t.string :ref_mail

      t.timestamps
    end
  end
end
