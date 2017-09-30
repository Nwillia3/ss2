class TrainerController < ApplicationController
  def index
		@trainer = Trainer.all
	end 
	
  def show
    # @profile = Profile.find(params[:id])
   # @trainer = Trainer.find(current_trainer)
    @trainer = Trainer.find(params[:id])
    # @user = User.find(current_user.id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trainer
      @trainer = Trainer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trainer_params
      params.require(:trainer).permit(:image, :fullname, :fitBio, :height, :weight, :diet, :age, :freqWorkOut)
    end
end