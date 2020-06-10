class HomedeliveryReferalsController < ApplicationController
  before_action :set_homedelivery_referal, only: [:show, :edit, :update, :destroy]
  before_action :set_lists, only: [:new, :edit, :update, :create]

  # GET /homedelivery_referals
  def index
    @homedelivery_referals = HomedeliveryReferal.all
  end

  # GET /homedelivery_referals/1
  def show
  end

  # GET /homedelivery_referals/new
  def new
    @homedelivery_referal = HomedeliveryReferal.new
  end

  # GET /homedelivery_referals/1/edit
  def edit
  end

  # POST /homedelivery_referals
  def create
    @homedelivery_referal = HomedeliveryReferal.new(homedelivery_referal_params)

    respond_to do |format|
      if @homedelivery_referal.save
        format.html { redirect_to referrals_path, notice: 'Homedelivery referral was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  # PATCH/PUT /homedelivery_referals/1
  def update
    respond_to do |format|
      if @homedelivery_referal.update(homedelivery_referal_params)
        format.html { redirect_to referrals_path, notice: 'Homedelivery referral was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /homedelivery_referals/1
  def destroy
    @homedelivery_referal.destroy
    respond_to do |format|
      format.html { redirect_to homedelivery_referals_url, notice: 'Homedelivery referral was successfully deleted.' }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_homedelivery_referal
      @homedelivery_referal = HomedeliveryReferal.find(params[:id])
    end

    def set_lists
      @method = ['Phone', 'Email', 'Facebook', 'Instagram']
      towns = Town.all
      @town = []
      towns.each do |t|
        @town.push(t.township)
      end
      @town.sort!
    end

    # Only allow a list of trusted parameters through.
    def homedelivery_referal_params
      params.require(:homedelivery_referal).permit(:contact_name, :contact_method_1, :contact_info_1, :contact_method_2, :contact_info_2, :contact_method_3, :contact_info_3, :referred_by, :relationship, :town, :notes)
    end
end
