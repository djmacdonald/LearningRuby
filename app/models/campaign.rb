class Campaign < ApplicationRecord
    belongs_to :user
    mount_uploader :campaign_file, CampaignUploader
end
