class CreateMyInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :my_infos do |t|
      t.integer :user_id
      t.string :myInfo_username
      t.string :myInfo_email
      t.boolean :my_info_open
      t.integer :my_info_edit
      
      t.string :myInfo_primary1
      t.string :myInfo_primary_class1
      t.string :myInfo_primary2
      t.string :myInfo_primary_class2
      t.string :myInfo_primary3
      t.string :myInfo_primary_class3     
      t.string :myInfo_primary4
      t.string :myInfo_primary_class4
      t.string :myInfo_primary5
      t.string :myInfo_primary_class5
      t.string :myInfo_primary6
      t.string :myInfo_primary_class6
      
      t.integer :myInfo_primary_year

      t.string :myInfo_middle1
      t.string :myInfo_middle_class1
      t.string :myInfo_middle2
      t.string :myInfo_middle_class2
      t.string :myInfo_middle3
      t.string :myInfo_middle_class3
      
      t.integer :myInfo_middle_year
      
      t.string :myInfo_high1
      t.string :myInfo_high_class1
      t.string :myInfo_high2
      t.string :myInfo_high_class2
      t.string :myInfo_high3
      t.string :myInfo_high_class3
      
      t.integer :myInfo_high_year
      t.timestamps
    end
  end
end
