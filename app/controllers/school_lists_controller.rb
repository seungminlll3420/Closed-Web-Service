class SchoolListsController < ApplicationController
  before_action :authenticate_user! 
  def index
    

    if current_user.my_info.present?
      @primary = [current_user.my_info.myInfo_primary1,
      current_user.my_info.myInfo_primary2,
      current_user.my_info.myInfo_primary3,
      current_user.my_info.myInfo_primary4,
      current_user.my_info.myInfo_primary5,
      current_user.my_info.myInfo_primary6 ]
      @middle = [current_user.my_info.myInfo_middle1,
      current_user.my_info.myInfo_middle2,
      current_user.my_info.myInfo_middle3
      ]
      @high = [current_user.my_info.myInfo_high1,
      current_user.my_info.myInfo_high2,
      current_user.my_info.myInfo_high3
      ]

      @primary_pagy, @primary_school_list = pagy(SchoolList.where(school_name: @primary, school_option: "primary" ), page_param: 'param_1',items: 3)
      @middle_pagy, @middle_school_list = pagy(SchoolList.where(school_name: @middle, school_option: "middle" ), page_param: 'param_2',items: 3)
      @high_pagy, @high_school_list = pagy(SchoolList.where(school_name: @high, school_option: "high" ), page_param: 'param_3',items: 3)
    else
      redirect_to "/my_infos/new"
    end
   
  end

  def new

      @primary_num = 0
      @middle_num = 0
      @high_num = 0
       @primary = [current_user.my_info.myInfo_primary1,
       current_user.my_info.myInfo_primary2,
       current_user.my_info.myInfo_primary3,
       current_user.my_info.myInfo_primary4,
       current_user.my_info.myInfo_primary5,
       current_user.my_info.myInfo_primary6
       ]
      @middle = [current_user.my_info.myInfo_middle1,
      current_user.my_info.myInfo_middle2,
      current_user.my_info.myInfo_middle3
      ]
      @high = [current_user.my_info.myInfo_high1,
      current_user.my_info.myInfo_high2,
      current_user.my_info.myInfo_high3
      ]
     

  end

  def new2

      @primary_num = 0
      @middle_num = 0
      @high_num = 0
       @primary = [current_user.my_info.myInfo_primary1,
       current_user.my_info.myInfo_primary2,
       current_user.my_info.myInfo_primary3,
       current_user.my_info.myInfo_primary4,
       current_user.my_info.myInfo_primary5,
       current_user.my_info.myInfo_primary6
       ]
      @middle = [current_user.my_info.myInfo_middle1,
      current_user.my_info.myInfo_middle2,
      current_user.my_info.myInfo_middle3
      ]
      @high = [current_user.my_info.myInfo_high1,
      current_user.my_info.myInfo_high2,
      current_user.my_info.myInfo_high3
      ]
     

  end

  
  def create



    
    @school_list = SchoolList.new
    @school_list.school_option = params[:school_option]
    @school_list.find_user_name = params[:find_user_name]
    @school_list.find_user_key = params[:find_user_key]
    @school_list.find_user_area = params[:find_user_area]
    @school_list.content = params[:content]
    @school_list.my_info_id = current_user.my_info.id
    @school_list.school_name = params[:school_name]
   
    

    @school_list.save
  
    redirect_to "/school_lists/index"
    
  end

  def edit
    @school_list = SchoolList.find(params[:id])
  end

  def update
    @school_list = SchoolList.find(params[:id])
    
    @school_list.find_user_name = params[:find_user_name]
    @school_list.find_user_key = params[:find_user_key]
    @school_list.find_user_area = params[:find_user_area]
    @school_list.content = params[:content]
    @school_list.save
    
    redirect_to "/school_lists/index"
  end

  def destroy
    @school_list = SchoolList.find(params[:id])
    @school_list.destroy
    
    redirect_to "/school_lists/index"
  end

  def show
    @school_list = SchoolList.find(params[:id])
  end
end
