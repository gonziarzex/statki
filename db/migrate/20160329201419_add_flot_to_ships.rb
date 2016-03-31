class AddFlotToShips < ActiveRecord::Migration
  def change
    add_reference :ships, :flot, index: true
  end
end
