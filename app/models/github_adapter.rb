class GithubAdapter
  include HTTParty
  base_uri 'https://api.github.com'

  attr_reader :user, :token

  def initialize(user, oauth_token)
    @user = user 
    @token = oauth_token
  end

  def request_all_info
    options = {Authorization: "token #{self.token}"}
    self.class.get("/users/#{self.user}", options).parsed_response
  end 

  def repos
    options = {Authorization: "token #{self.token}"}
    self.class.get("/users/#{self.user}/repos", options).parsed_response
  end

  def all_commits
    options = {Authorization: "token #{self.token}"}
    self.class.get("/users/#{self.user}/repos", options).parsed_response
  end

  def commits_for_repo(repo)
    options = {Authorization: "token #{self.token}"}
    self.class.get("/repos/#{self.user}/#{repo}", options).parsed_response
  end
end
