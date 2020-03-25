# frozen_string_literal: true

require 'redis'

redis = Redis.new(host: "127.0.0.1", port: 6379)

loop do
  keys = redis.keys("api_*")

  keys.each do |k|
    val = redis.get(k)
    pp "#{k}: #{val}"
  end
  pp "------------------------------------------------"
  sleep 3
end
