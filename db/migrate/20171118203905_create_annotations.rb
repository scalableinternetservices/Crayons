class CreateAnnotations < ActiveRecord::Migration[5.1]
  def change
    create_table :annotations do |t|
      t.string :label

      t.timestamps
    end
  end
end
