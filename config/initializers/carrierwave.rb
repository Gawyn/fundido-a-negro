CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      =>  APP_CONFIG['s3']['access_key_id'],
    :aws_secret_access_key  =>  APP_CONFIG['s3']['secret_access_key'],
    :region                 =>  APP_CONFIG['s3']['region']
  }
  config.fog_directory  = APP_CONFIG['s3']['directory']
end
