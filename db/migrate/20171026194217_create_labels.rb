class CreateLabels < ActiveRecord::Migration[5.1]
  def change
    create_table :labels do |t|
      t.string :labels
      t.integer :id_ref

      t.timestamps
    end
  end
end
