class CreateJoinTableAssemblyPart < ActiveRecord::Migration[5.2]
  def change
    create_join_table :assemblies, :parts, id: false do |t|
      t.belongs_to :assembly, index: true
      t.belongs_to :part, index: true
      # t.index [:assembly_id, :part_id]
      # t.index [:part_id, :assembly_id]
    end
  end
end
