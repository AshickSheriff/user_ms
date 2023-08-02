class FormsController < ApplicationController
  before_action :authenticate_user!

  def home
  def search_bar
    if params[:query].present?
      @result = search(params[:query])
    else
      @result = []
    end
  end  
end  

  def user_details
    @user_details = UserDetails.new(session[:user_details] || {})
  end

  def create_user_details
    @user_details = UserDetails.new(params[:user_details])
    if @user_details.valid?
      session[:user_details] = @user_details.attributes
      redirect_to address_details_path
    else
      render :user_details 
    end
  end
  
  def address_details
    @address_details = AddressDetails.new(session[:address_details] || {})
  end  

  def create_address_details
   
    @address_details = AddressDetails.new(params[:address_details])
    if @address_details.valid?
      session[:address_details] = @address_details.attributes
      redirect_to office_details_path
    else
      render :address_details
    end
  end   

  def office_details
    @office_details= OfficeDetails.new(session[:office_details]|| {}) 
    
  end   
 

  def create_office_details
    @user_details = UserDetails.new(session[:user_details] || {})
    @address_details = AddressDetails.new(session[:address_details] || {})
    @office_details = OfficeDetails.new(params[:office_details])


    # @user_details.save
    # @address_details.save
    # @office_details.save
    
    if @user_details.save && @address_details.save && @office_details.save
      solr = RSolr.connect(url: 'http://localhost:8983/solr/gettingstarted')
      solr.add([
        @user_details.attributes.merge(id: @user_details.id),  
        @address_details.attributes.merge(id: @address_details.id),
        @office_details.attributes.merge(id: @office_details.id)
          ])
      solr.commit

      session[:user_details]= nil
      session[:address_details]= nil
      session[:office_details]= nil
      
      redirect_to root_path
      puts "saved successfully"
     end     
  end  

  private

  def user_details
    params.require(:user_details).permit(
    :firstname, :midname, :lastname, :age, :dob, :email, :phone_no,
    :occupation, :degree, :organization, :experience, :org_address,
    :about_us, :interest_rating, :course, :instagram_account, :twitter_account, :facebook_account,
    :cgpa, :father_name, :mother_name, :father_mobile, :mother_mobile, :sibling_details, :suggestions
    )
  end


  def address_details
    params.require(:address_details).permit(
    :name, :phone, :mail,
    :temp_door_no, :temp_street_name, :temp_landmark, :temp_post, :temp_district, :temp_state, :temp_pincode,
    :perm_door_no, :perm_street_name, :perm_landmark, :perm_post, :perm_district, :perm_state, :perm_pincode,
    :ref_name, :ref_contact, :ref_mail
    )
  end
  
  def office_details
    params.require(:office_details).permit(
      :name, :email, :phone_no, :tenth_mark, :twelfth_mark,
      :cgpa, :aadhar_no, :pan_no, :account_no, :no_of_siblings, 
      :first_graduate, :skills, :differently_abled, :completed_graduation
    )
  end


end

