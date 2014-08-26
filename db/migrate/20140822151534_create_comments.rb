class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :userid
      t.text :comment
      t.datetime :date

      t.timestamps
    end
  end
end
