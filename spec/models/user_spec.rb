require 'rails_helper'

describe User do
  
  include TestFactories

  describe "#favorited(post)" do

    before do 
      @user = authenticated_user
      @post = associated_post
    end

  end
end