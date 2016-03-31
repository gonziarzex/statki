class CreateShips < ActiveRecord::Migration
  def change
    create_table :ships do |t|
    	t.string :gatunek
    	t.integer :liczba
      t.timestamps
    end
  end
end
