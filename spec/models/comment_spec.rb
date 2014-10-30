require 'rails_helper'

describe Comment do

  include TestFactories

  describe "after_create" do

    before do
      @post = associated_post
      @user = authenticated_user
      @comment = Comment.new(body: 'My comment', post: @post, user_id: 10000)
    end
  end
end