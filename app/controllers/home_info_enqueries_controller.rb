class HomeInfoEnqueriesController < ApplicationController

def new

end

def create

@enquery = HomeInfoEnquery.new(home_info_enquery_params)
 if  @enquery.save
  flash[:notice] = "deatils saved"
 redirect_to home_path(@enquery.home_id)
else

	if @enquery.errors.any?
  flash[:notice]= "Please fill all the manditory fields"
  #render :new
  end
 
end
 end

private
  def home_info_enquery_params
    params.require(:home_info_enquery).permit( :name, :email, :phone, :comments, :home_id )
  end



end
