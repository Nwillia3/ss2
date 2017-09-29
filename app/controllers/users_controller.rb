class UsersController < ApplicationController
	before_action :authenticate_user!, except: [:show]
	def index
		@user = User.all
	end 
  def show
  	@user = User.find(current_user.id)
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_appointment
      @trainer = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def appointment_params
      params.require(:user).permit(:fullname, :fitBio, :height, :weight, :diet, :age, :freqWorkOut)
    end
end
