class CreateComments < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.references :user
  		t.references :contact
  		t.text :description
  		t.string :photo

  		t.timestamps
  	end
  end
end
