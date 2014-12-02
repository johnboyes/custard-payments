require 'bundler'
Bundler.require

module Statement
  class API < Grape::API

    format:json

    resource :statement do

      desc "return a player's statement - all values are in pence"
      params do
        requires :name, type: String, desc: "Player's first name and last name, separated by an underscore."
      end
      route_param :name do
        get do
          "{amount:5000}"
        end
      end

    end
  end
end