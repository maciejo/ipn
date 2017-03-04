class CreateUlices < ActiveRecord::Migration
  def change
    create_table :ulices do |t|
      t.string :nazwa_ulicy
      t.string :miejscowosc
      t.string :opinia
      t.string :zrodlo_uzasadnienia
      t.string :data_wpisu
      t.string :autor
      t.string :email_autora
      t.string :telefon_autora
      t.string :oddział

      t.timestamps null: false
    end
  end
end
