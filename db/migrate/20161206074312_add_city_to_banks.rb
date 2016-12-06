class AddCityToBanks < ActiveRecord::Migration[5.0]
  def change
    add_reference :banks, :city, foreign_key: true
  end
end
