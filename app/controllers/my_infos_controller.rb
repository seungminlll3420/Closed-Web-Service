class MyInfosController < ApplicationController
  def index
  end

  def new
    @myI = MyInfo.all
    @myI.each do |myinfo|
      if myinfo.user_id == current_user.id
          redirect_to "/my_infos/show"
      end  
  end  
   
  
  end

  def create
    @my = MyInfo.new
    @my.user_id = current_user.id
    @my.myInfo_username = params[:myInfo_username]
    @my.myInfo_email = params[:myInfo_email]
    @my.myInfo_primary1 = params[:myInfo_primary1]
    @my.myInfo_primary_class1 = params[:myInfo_primary_class1]
    @my.myInfo_primary2 = params[:myInfo_primary2]
    @my.myInfo_primary_class2 = params[:myInfo_primary_class2]
    @my.myInfo_primary3 = params[:myInfo_primary3]
    @my.myInfo_primary_class3 = params[:myInfo_primary_class3]
    @my.myInfo_primary4 = params[:myInfo_primary4]
    @my.myInfo_primary_class4 = params[:myInfo_primary_class4]
    @my.myInfo_primary5 = params[:myInfo_primary5]
    @my.myInfo_primary_class5 = params[:myInfo_primary_class5]
    @my.myInfo_primary6 = params[:myInfo_primary6]
    @my.myInfo_primary_class6 = params[:myInfo_primary_class6]
    @my.myInfo_primary_year = params[:myInfo_primary_year]
    
    @my.myInfo_middle1 = params[:myInfo_middle1]
    @my.myInfo_middle_class1 = params[:myInfo_middle_class1]
    @my.myInfo_middle2 = params[:myInfo_middle2]
    @my.myInfo_middle_class2 = params[:myInfo_middle_class2]
    @my.myInfo_middle3 = params[:myInfo_middle3]
    @my.myInfo_middle_class3 = params[:myInfo_middle_class3]
    @my.myInfo_middle_year = params[:myInfo_middle_year]
    
    @my.myInfo_high1 = params[:myInfo_high1]
    @my.myInfo_high_class1 = params[:myInfo_high_class1]
    @my.myInfo_high2 = params[:myInfo_high2]
    @my.myInfo_high_class2 = params[:myInfo_high_class2]
    @my.myInfo_high3 = params[:myInfo_high3]
    @my.myInfo_high_class3 = params[:myInfo_high_class3]
    @my.myInfo_high_year = params[:myInfo_high_year]

    @my.save
    
    redirect_to "/my_infos/show"
  end

  def show
    @my = MyInfo.all
  end

  def edit
    @my = MyInfo.find(params[:id])
  end

  def update
    @my = MyInfo.find(params[:id])
    
    @my.myInfo_username = params[:myInfo_username]
    @my.myInfo_email = params[:myInfo_email]
    @my.myInfo_primary1 = params[:myInfo_primary1]
    @my.myInfo_primary_class1 = params[:myInfo_primary_class1]
    @my.myInfo_primary2 = params[:myInfo_primary2]
    @my.myInfo_primary_class2 = params[:myInfo_primary_class2]
    @my.myInfo_primary3 = params[:myInfo_primary3]
    @my.myInfo_primary_class3 = params[:myInfo_primary_class3]
    @my.myInfo_primary4 = params[:myInfo_primary4]
    @my.myInfo_primary_class4 = params[:myInfo_primary_class4]
    @my.myInfo_primary5 = params[:myInfo_primary5]
    @my.myInfo_primary_class5 = params[:myInfo_primary_class5]
    @my.myInfo_primary6 = params[:myInfo_primary6]
    @my.myInfo_primary_class6 = params[:myInfo_primary_class6]
    @my.myInfo_primary_year = params[:myInfo_primary_year]
    
    @my.myInfo_middle1 = params[:myInfo_middle1]
    @my.myInfo_middle_class1 = params[:myInfo_middle_class1]
    @my.myInfo_middle2 = params[:myInfo_middle2]
    @my.myInfo_middle_class2 = params[:myInfo_middle_class2]
    @my.myInfo_middle3 = params[:myInfo_middle3]
    @my.myInfo_middle_class3 = params[:myInfo_middle_class3]
    @my.myInfo_middle_year = params[:myInfo_middle_year]
    
    @my.myInfo_high1 = params[:myInfo_high1]
    @my.myInfo_high_class1 = params[:myInfo_high_class1]
    @my.myInfo_high2 = params[:myInfo_high2]
    @my.myInfo_high_class2 = params[:myInfo_high_class2]
    @my.myInfo_high3 = params[:myInfo_high3]
    @my.myInfo_high_class3 = params[:myInfo_high_class3]
    @my.myInfo_high_year = params[:myInfo_high_year]
    
    @my.save
    redirect_to "/my_infos/show"
  end
end
