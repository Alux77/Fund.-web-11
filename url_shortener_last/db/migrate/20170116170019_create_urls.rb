class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.stringer :user_id
      t.string :long_url
      t.string :short_url
      t.integer :click_count
    end
  end
end
