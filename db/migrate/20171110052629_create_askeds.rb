class CreateAskeds < ActiveRecord::Migration
  def change
    create_table :askeds do |t|
      t.string :name
      t.string :content
      
      t.timestamps null: false
    end
  end
end
