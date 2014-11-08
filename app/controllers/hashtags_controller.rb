class HashtagsController < ApplicationController
  def show
    @search = Search.new(term: hash_tag)
  end

  private

  def hash_tag
    "##{params[:id]}"
  end
end