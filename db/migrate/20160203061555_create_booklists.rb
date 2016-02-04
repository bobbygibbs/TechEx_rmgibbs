class CreateBooklists < ActiveRecord::Migration
  def change
    create_table :booklists do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.integer :pages

      t.timestamps
    end
  end
end
