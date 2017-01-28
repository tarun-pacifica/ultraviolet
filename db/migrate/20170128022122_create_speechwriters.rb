class CreateSpeechwriters < ActiveRecord::Migration[5.0]
  def change
    create_table :speechwriters do |t|
      t.string :message
      t.string :warning
      t.boolean :sunscreen

      t.timestamps
    end
  end
end
