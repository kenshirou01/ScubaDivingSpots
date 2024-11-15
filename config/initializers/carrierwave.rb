require 'carrierwave'
require 'carrierwave/orm/activerecord'
require 'fog/aws'

CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'
  config.fog_credentials = {
    provider:              'AWS',
    aws_access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
    region:                'ap-northeast-1',
  }
  config.fog_directory  = ENV['AWS_BUCKET_NAME']
  config.fog_public     = false
  config.storage        = :fog
end
