class AddSubtititleToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :subtitle, :string
  end
end
