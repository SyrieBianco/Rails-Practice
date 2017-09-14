class TagsController < ApplicationController

  def create
    @tag = Tag.new(tag_params)
    @tag.save
    flash.now[:errors] = @tag.errors.full_messages
    redirect_to post_url(@tag.post)
  end

  def destroy
  end

  private

  def tag_params
    params.require(:tag).permit(:name, :post_id)
  end

end
