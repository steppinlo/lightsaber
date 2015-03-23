class CreateLightsaber < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string  :name
      t.string  :location
      t.string  :quirk
      t.timestamp null: false
    end
  end
end
