class CreatePictrues < ActiveRecord::Migration
  def change
    create_table :pictrues do |t|
      t.string :pic
      t.string :title
      t.text :desc

      t.timestamps
    end
  end
end
