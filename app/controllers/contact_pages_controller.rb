class ContactPagesController < ApplicationController

 def new
 @contact_page =  ContactPage.new
 end

 def create
#  render text: contact_page_params.to_yaml and return

  @contact_page = ContactPage.new(contact_page_params)
#   if @contact_page.valid?
 if    @contact_page.save
   flash[:notice]="we have recieved your details successfully"
  redirect_to root_path
  else
   
   if @contact_page.errors.any?
  flash[:notice]= "Please fill all the manditory fields"
  end


   render :new
  end



end

private
  def contact_page_params
    params.require(:contact_page).permit( :first_name, :last_name, :email, :phone, :do_you_have_land, :moving_time_frame, :financing, :town_planning_to_build, :state, :assist_you)

  end
end

