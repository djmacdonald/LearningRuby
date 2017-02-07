class Campaign < ApplicationRecord
    belongs_to :user
    mount_uploader :campaign, CampaignUploader
end
