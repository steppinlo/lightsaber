class CreateLightsaber < ActiveRecord::Migration
  def change
    create_table :sealions do |t|
      t.string  :name
      t.timestamp null: false
    end
  end
end
