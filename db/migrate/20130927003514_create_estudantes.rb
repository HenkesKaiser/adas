class CreateEstudantes < ActiveRecord::Migration
  def change
    create_table :estudantes do |t|
      t.string :nome
      t.integer :idade

      t.timestamps
    end
  end
end
