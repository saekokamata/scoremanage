class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :parent_name
      t.string :email
      t.string :password_digest
      t.string :child_name
      t.integer :passing_score
      t.integer :failing_score

      t.timestamps
    end
  end
end
