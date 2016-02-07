class CreateUserFiles < ActiveRecord::Migration
  def change
    create_table :user_files do |t|
      t.string :name
      t.text :data
      t.text :comment
      t.references :user, index: true

      t.timestamps
    end
  end
end
