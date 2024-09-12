class CreateCameras < ActiveRecord::Migration[7.2]
  def change
    create_table :cameras do |t|
      t.timestamps
    end
  end
end
