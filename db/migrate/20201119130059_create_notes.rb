class CreateNotes < ActiveRecord::Migration[6.0]
  def change
    create_table :notes do |t|
      t.string :title
      t.integer :priority
      t.string :detail

      t.timestamps
    end
  end
end
