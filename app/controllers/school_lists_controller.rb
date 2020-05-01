class SchoolListsController < ApplicationController
  def index
      @school_lists = SchoolList.all
      @primary = [current_user.my_info.myInfo_primary1,
      current_user.my_info.myInfo_primary2,
      current_user.my_info.myInfo_primary3,
      current_user.my_info.myInfo_primary4,
      current_user.my_info.myInfo_primary5,
      current_user.my_info.myInfo_primary6 ]
      @middel = [current_user.my_info.myInfo_middle1,
      current_user.my_info.myInfo_middle2,
      current_user.my_info.myInfo_middle3
      ]
      @high = [current_user.my_info.myInfo_high1,
      current_user.my_info.myInfo_high2,
      current_user.my_info.myInfo_high3
      ]
  end

  def new
      @primary_nem = 0
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
     
    # @i =0 
    # @count = 0
    # @abc = current_user.my_info.myInfo_primary1
    # @abcd = current_user.my_info.myInfo_primary1
    # while @i != 5 do
    #   if @abc != current_user.my_info.myInfo_primary2 and @i <= 0
    #     @abc = current_user.my_info.myInfo_primary2
    #     @abcd = @abcd + ", " + @abc
    #   @i = 1  
    #   @count = @count + 1  
    #     next
    #   elsif @abc != current_user.my_info.myInfo_primary3 and @i <= 1
    #     @abc = current_user.my_info.myInfo_primary3
    #     @abcd = @abcd + ", " + @abc
    #   @i = 2  
    #   @count = @count + 1
    #     next
    #   elsif @abc != current_user.my_info.myInfo_primary4 and @i <= 2
    #     @abc = current_user.my_info.myInfo_primary4
    #     @abcd = @abcd + ", " + @abc
    #     @i = 3 
    #     @count = @count + 1
    #     next
    #   elsif @abc != current_user.my_info.myInfo_primary5 and @i <= 3
    #     @abc = current_user.my_info.myInfo_primary5
    #     @abcd = @abcd + ", " + @abc
    #     @i = 4  
    #     @count = @count + 1
    #     next
    #   elsif @abc != current_user.my_info.myInfo_primary6 and @i <= 4
    #     @abc = current_user.my_info.myInfo_primary6
    #     @abcd = @abcd + ", " + @abc
    #     @i = 5  
    #     @count = @count + 1
    #     next
    #   else 
    #     break
    #   end
    # end
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
    
    # if @school_list.school_option == "primary"
    #   @school_list.school_name = current_user.my_info.myInfo_primary1
    # elsif @school_list.school_option == "middle"
    #   @school_list.school_name = current_user.my_info.myInfo_middle1
    # elsif @school_list.school_option == "high" 
    #   @school_list.school_name = current_user.my_info.myInfo_high1
    # end
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
