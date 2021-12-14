class AddColorToPlanet < ActiveRecord::Migration[6.1]
  def change
    add_column :planets, :color, :string
  end
end
