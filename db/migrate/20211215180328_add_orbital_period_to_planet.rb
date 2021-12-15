class AddOrbitalPeriodToPlanet < ActiveRecord::Migration[6.1]
  def change
    add_column :planets, :orbital_period, :integer
  end
end
