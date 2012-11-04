class CreateMarinas < ActiveRecord::Migration
  def change
    create_table :marinas do |t|
      t.integer :managers_id
      t.integer :boatowners_id

      t.string :name
      t.string :address
      t.string :address2
      t.string :town
      t.string :county
      t.string :nation
      t.string :country


      t.timestamps
    end
  end
end
