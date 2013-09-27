class CreateEstudades < ActiveRecord::Migration
  def change
    create_table :estudades do |t|
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
