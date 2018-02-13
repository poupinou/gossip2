class GossipsController < ApplicationController

	def index
		@gossip = Gossip.all
	end

	def new
		@gossip = Gossip.new
	end

	def create
		@user = current_user
		@gossip = Gossip.new(gossip_params)
		@gossip.user_id = @user.id
		@gossip.save
		redirect_to home_path	
	end

	def show
		@gossip = Gossip.find(params[:id])
	end

	def edit 
		@gossip = Gossip.find(params[:id])
	end

	def destroy
		@gossip = Gossip.find(params[:id])
		@gossip.destroy
		redirect_to home_path
	end

	def gossip_params
		params.require(:gossip).permit(:content)
	end

end
