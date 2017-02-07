class AddFileToCampaign < ActiveRecord::Migration[5.0]
  def self.up
      add_column :campaigns, :campaign_file, :string
  end
end
