class AddNullConstraints < ActiveRecord::Migration[7.0]
  def change
    change_column_null :flats, :name, false
    change_column_null :flats, :address, false
    change_column_null :flats, :description, false
    change_column_null :flats, :price_per_night, false
    change_column_null :flats, :number_of_guests, false
  end
end
