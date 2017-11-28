class CreateJoinTableAnnotationPhoto < ActiveRecord::Migration[5.1]
  def change
    create_join_table :annotations, :photos do |t|
      # t.index [:annotation_id, :photo_id]
      # t.index [:photo_id, :annotation_id]
    end
  end
end
