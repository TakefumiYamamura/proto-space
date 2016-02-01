class PrototypesController < ApplicationController
  def index
    @prototypes = Prototype.all
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    binding.pry
    @prototype = current_user.prototypes.build(create_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def popular
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, images_attributes: [:status, :image]).merge(tag_list: params[:prototype][:tag])
  end

end
