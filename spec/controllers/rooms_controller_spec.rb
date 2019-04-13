require 'rails_helper'


describe RoomsController, :type => :controller do

  before(:each) do
     @request.env["devise.mapping"] = Devise.mappings[:user]
     user = FactoryBot.create(:user)
     sign_in user
     @roomes = Room.create(name: 'test')
    # @account = FactoryGirl.create(:account_with_user)
    # @user = @account.user
    # @country = FactoryGirl.create(:country)
    # @state  = FactoryGirl.create(:state, country_id: @country.id,  continent_id: @country.continent_id)
    # @city   = FactoryGirl.create(:city , state_id: @state.id, country_id: @country.id,  continent_id: @country.continent_id)
    # @accommodation = FactoryGirl.create(:accommodation, continent_id: @country.continent_id, country_id: @country.id ,state_id: @state.id, city_id: @city.id)
    # controller.stub :current_user => @user
  end

  describe "GET #index" do
    it "renders the :index view" do
      get :index
      expect(response).to be_success
    end

    # it "search hotel " do
    #   search_param ={ "accommodation"=>{"obj_id"=>@accommodation.id, "obj_name"=>"TravelItem", "type"=>"hoteis",
    #                   "name"=> @accommodation.name, "check_in_date"=>"", "check_out_date"=>""}}
    #   get :index, search_param
    #   expect(assigns(:accommodations)).to eq([@accommodation])
    #   expect(response).to render_template("index")
    # end
  end

 


end
