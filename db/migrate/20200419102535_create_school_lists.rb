class CreateSchoolLists < ActiveRecord::Migration[5.2]
  def change
    create_table :school_lists do |t|
      t.string :school_option
      t.string :school_name
      t.integer :school_year
      t.string :find_user_name
      t.string :find_user_key
      t.string :find_user_area
      t.string :title
      t.string :content 
      t.integer :my_info_id
      
      t.timestamps
    end
  end
end
