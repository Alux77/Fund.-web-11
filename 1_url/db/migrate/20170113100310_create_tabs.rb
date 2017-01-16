class CreateTabs < ActiveRecord::Migration
  def change
    create_table :Urls do |t|
    t.string :long_url
    t.string :short_url
    t.integer :click_count, :default => 0


    t.timestamps
    end
  end
end