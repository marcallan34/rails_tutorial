class TagsController < ApplicationController

  def show
    @tag = Tag.find(params[:id])
  end

  def index
    @tags = Tag.all
  end

  def destroy
  	@tags = Tag.find(params[:id])
  	@tags.destroy

  	flash.notice = "Tag '#{@tags.name}' Deleted!"

  end

end
