class CreateUserDetails < ActiveRecord::Migration[7.0]
  def change
    create_table :user_details do |t|
      t.string :firstname
      t.string :midname
      t.string :lastname
      t.integer :age
      t.date :dob
      t.string :email
      t.string :phone_no
      t.string :occupation
      t.string :degree
      t.string :organization
      t.string :experience
      t.text :org_address
      t.string :about_us
      t.integer :interest_rating
      t.string :course
      t.string :instagram_account
      t.string :twitter_account
      t.string :facebook_account
      t.float :cgpa
      t.string :father_name
      t.string :mother_name
      t.string :father_mobile
      t.string :mother_mobile
      t.text :sibling_details
      t.text :suggestions

      t.timestamps
    end
  end
end
