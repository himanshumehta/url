class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :url
      t.string :slug
      t.integer :clicks
      t.string :sanitize_url
      t.integer :http_status

      t.timestamps
    end
  end
end
