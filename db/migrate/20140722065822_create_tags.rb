class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name
      t.string :belongs_to

      t.timestamps
    end
  end
end
