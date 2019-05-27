class ApplicationController < ActionController::API

    def encode_token(payload)
    # JWT.encode(payload, ENV['SECRET'], 'HS256')
    JWT.encode(payload, "vickyisthebest", 'HS256')
  end
end
