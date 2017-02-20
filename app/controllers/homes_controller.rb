class HomesController < ApplicationController

before_action :set_home, only: [:show, :edit, :update]
  # User must be authneticated before every controller action, except for show
  #before_action :authenticate_user!, except: [:show, :home ]

  def new
    @home = Home.new
  end

  def show
   # @messages = @conversation.messages.find(params[:conversation_id])
    @home_photos = @home.home_photos
    @home_info_enquery = HomeInfoEnquery.new

   # @booked = Reservation.where("listing_id = ? AND user_id =?",@listing.id,current_user.id).present? if current_user

   # @reviews= @listing.reviews
   # @hasReview = @reviews.find_by(user_id: current_user.id) if current_user
    #redirect_to url_for(:controller => :messages, :action => :create)
    #render 'messages_controller/create'

  end




  def index
    @homes = Home.paginate(:page => params[:page], :per_page => 20)


  end

  def create
    @home = Home.new(home_params)
    if @home.save
      if params[:images]
        params[:images].each do |image|
          @home.home_photos.create(image: image)
        end
      end

      @home_photos = @home.home_photos
      redirect_to edit_home_path (@home), notice: "Saved..."
    else
      render :new
    end
   # puts @listing.errors.inspect
  end
  
  def update
    if @home.update(home_params)
      if params[:images]
        params[:images].each do |image|
          @home.home_photos.create(image: image)
        end
      end
      redirect_to edit_home_path(@home), notice: "Updated..."
    else
      render :edit
    end
    puts @home.errors.inspect
  end

  def edit
     @home_photos = @home.home_photos
  end



  private
  def set_home
    @home = Home.find(params[:id])
  end
 
  def home_params
    params.require(:home).permit( :home_type, :name, :no_of_bedrooms, :building_method, :series, :description , :sft, :no_of_bathrooms, 
                                  :other, :price)
  end


end
