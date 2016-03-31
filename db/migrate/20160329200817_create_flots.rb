class CreateFlots < ActiveRecord::Migration
  def change
    create_table :flots do |t|
    	t.string :nazwa
    	t.integer :liczba
    	t.boolean :dostenosc
      t.timestamps
    end
  end
end
