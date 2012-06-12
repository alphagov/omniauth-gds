require 'omniauth-oauth2'
require 'multi_json'

class OmniAuth::Strategies::Gds < OmniAuth::Strategies::OAuth2
  uid { user['uid'] }

  info do {
    name: user['name'],
    email: user['email']
  }

  extra do {
    user: user
  }

  def user
    @user ||= MultiJson.decode(access_token.get('/user.json').body)['user']
  end

end
