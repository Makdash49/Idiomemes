class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
    	t.references :user
      t.string :name

      t.timestamps
    end
  end
end
