class ChangeOrbitalDistanceToFloatingPointNumber < ActiveRecord::Migration[6.1]
  def change
    change_column :planets, :orbital_distance, :float
    change_column :planets, :mass, :float
  end
end
