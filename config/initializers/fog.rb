require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'


CarrierWave.configure do |config|

  # Use local storage if in development or test
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
        config.root = "#{Rails.root}/tmp"
    end
  end

  # Use AWS storage if in production
  if Rails.env.production?
    CarrierWave.configure do |config|
        config.storage = :fog
        config.fog_credentials ={
            :provider               => "AWS",
            :aws_access_key_id      => ENV['AWS_ACCESS_KEY_ID'],
            :aws_secret_access_key  => ENV['AWS_SECRET_ACCESS_KEY']
        }       
    end
  end
  
  config.fog_directory    = ENV['AWS_BUCKET'] 
  config.fog_public       = false
    # required
  #config.fog_host       = 'https://assets.example.com'           # optional, defaults to nil                              # optional, defaults to true
  #config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end