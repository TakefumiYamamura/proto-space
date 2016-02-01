class CommentsController < ApplicationController
  def create
    Comment.create(params)
  end
end
