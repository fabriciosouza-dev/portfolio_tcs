require 'pusher'

Pusher.app_id  = ENV["EMAIL"]
Pusher.secret  = ENV["SENHA_EMAIL"]
Pusher.logger = Rails.logger
Pusher.encrypted = true