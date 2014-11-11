class CreateReplies < ActiveRecord::Migration
  def change
  	create_table :replies do |t|
  		t.references :user
  		t.references :comment
  		t.text :reaction

  		t.timestamps
  	end
  end
end
