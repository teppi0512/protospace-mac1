class PrototypesController < ApplicationController
  
  def index
    @prototype = Prototype.new
    @prototypes = Prototype.includes(:user).order("created_at DESC")
  end

  def new
    @prototype = Prototype.new
  end

  def create
    @prototype = Prototype.new(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      @prototype = Prototype.includes(:user)
      render :index
    end
  end

  private
  def prototype_params
    params.require(:prototype).permit(:image, :title, :catch_copy, :concept).merge(user_id: current_user.id)
  end

end
