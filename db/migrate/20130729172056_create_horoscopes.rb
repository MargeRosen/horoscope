class CreateHoroscopes < ActiveRecord::Migration
  def change
    create_table :horoscopes do |t|
      t.datetime :birthdate

      t.timestamps
    end
  end
end
