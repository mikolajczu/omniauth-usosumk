require 'omniauth-oauth'
require 'json'

module OmniAuth
  module Strategies
    class Usosumk < OmniAuth::Strategies::OAuth
      option :name, 'usosumk'
      option :callback_url, "http://127.0.0.1:3000/oauth/callback"

      option :client_options, {site: "https://usosapps.umk.pl",
                               request_token_url: "/services/oauth/request_token?scopes=email",
                               authorize_url: "https://usosapps.umk.pl/services/oauth/authorize",
                               access_token_url: "/services/oauth/access_token"}

      uid { raw_info["id"] }

      info do
        {
          :email => raw_info["email"],
          :first_name => raw_info["first_name"],
          :last_name => raw_info["last_name"],
        }
      end

      extra do
        skip_info? ? {} : { :raw_info => raw_info }
      end

      def raw_info
        @raw_info ||= JSON.load(access_token.get("/services/users/user?fields=id|first_name|last_name|email").body)
      end

    end
  end
end