require 'httparty'

module Codecreep
  class Github
    include HTTParty
    base_uri 'https://api.github.com'
    basic_auth ENV['GH_USER'], ENV['GH_PASS']


  def get_user(user)
    self.class.get{"/users/#{user}/"}
  end

  def get_followers(user)
    self.class.get{"/users/#{user}/followers"}
  end

  def get_following(user)
    self.class.get{"users/#{user}/following"}
                   #users/#{users}/following{/other_user} would it be this?
  end


  end






end
