class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.references :user, foreign_key: true
      t.date :year_month
      t.integer :week
      t.string :text_no
      t.string :japanese_theme
      t.integer :japanese_score
      t.string :japanese_memo
      t.boolean :japanese_review, default: false, null: false
      t.string :math_theme
      t.integer :math_score
      t.string :math_memo
      t.boolean :math_review, default: false, null: false
      t.string :science_theme
      t.integer :science_score
      t.string :science_memo
      t.boolean :science_review, default: false, null: false
      t.string :social_theme
      t.integer :social_score
      t.string :social_memo
      t.boolean :social_review, default: false, null: false

      t.timestamps
    end
  end
end
