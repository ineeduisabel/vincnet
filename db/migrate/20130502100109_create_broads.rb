class CreateBroads < ActiveRecord::Migration
  def change
    create_table :broads do |t|
      t.string :name

      t.timestamps
    end
  end
end
