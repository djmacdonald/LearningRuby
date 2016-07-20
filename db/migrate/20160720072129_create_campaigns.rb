class CreateCampaigns < ActiveRecord::Migration[5.0]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.string :theaters

      t.timestamps
    end
  end
end
