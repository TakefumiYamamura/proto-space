class PrototypesController < ApplicationController
  before_action :fetch_prototype,  only: [:show, :edit, :update]

  def index
    @prototypes = Prototype.order(updated_at: :desc).page(params[:page]).includes(:tags, :user)
  end

  def new
    @prototype = Prototype.new
    @prototype.images.build
  end

  def create
    @prototype = current_user.prototypes.build(create_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @comment = Comment.new
  end

  def destroy
    Prototype.find(params[:id]).destroy
    redirect_to root_path
  end

  def update
    @prototype.update(create_params)
    redirect_to root_path
  end

  def edit
    @tags = @prototype.tag_list
  end

  def popular
  end

  private
  def create_params
    params.require(:prototype).permit(:title, :catch_copy, :concept, images_attributes: [:status, :avatar]).merge(tag_list: params[:prototype][:tag])
  end

  def fetch_prototype
    @prototype = Prototype.find(params[:id])
  end

end
