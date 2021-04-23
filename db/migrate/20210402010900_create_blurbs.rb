class CreateBlurbs < ActiveRecord::Migration[6.1]
  def change
    create_table :blurbs do |t|
      t.string :location
      t.text :fact
      t.string :image_url
      t.integer :user_id

      t.timestamps
    end
  end
end
