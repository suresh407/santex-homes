class PagesController < ApplicationController

 def index
 	 @homes = Home.last(8)
 end	
def search
 @homes = Home.all
 

 end 

 def single_wide

@single_wide = Home.single_wide.paginate :page => params[:page], :per_page =>10

end


def double_wide

@double_wide = Home.double.paginate :page => params[:page], :per_page =>10

end


def triple_wide

@triple_wide = Home.triple.paginate :page => params[:page], :per_page =>10

end

def other

@other = Home.others

end

def hotdeals

@hotdeals = Home.hotdeals
if request.params[:param1] == "pep"
 home = request.params[:param1]
elsif
#end
request.params[:param2] == "steal"
 home = request.params[:param2]
elsif
request.params[:param3] == "lewis"
 home = request.params[:param3]
elsif
request.params[:param4] == "ali"
 home = request.params[:param4]
elsif
request.params[:param4] == "lison"
 home = request.params[:param4]
else
flash[:error] = "invalid category"
end


if home == "steal"
@id = Home.find_by_id(105)
redirect_to home_path(@id)
elsif home == "pep"
@id = Home.find_by_id(106)
redirect_to home_path(@id)
elsif home == "lewis"
@id = Home.find_by_id(104)
redirect_to home_path(@id)
elsif home == "ali"
@id = Home.find_by_id(103)
redirect_to home_path(@id)
elsif home == "lison"
@id = Home.find_by_id(102)
redirect_to home_path(@id)
else
flash[:error] = "invalid category"
end

end



 
 def about_us
 end 

 def finance

 @message =  ContactPage.new

 
 end
 
 def construction
 end
 def energy_smart
 end
end	
