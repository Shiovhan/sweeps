class CreateSweeps < ActiveRecord::Migration
  def change
    create_table :sweeps do |t|
      t.text :title
      t.string :date

      t.timestamps
    end
  end
end
