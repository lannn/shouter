class TextShout < ActiveRecord::Base
  belongs_to :user

  def index
    body
  end
end
