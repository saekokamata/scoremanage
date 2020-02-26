# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# User
# - parent_name
# - email
# - password_digst
# - child_name
# - passing_score
# - failing_score

# Test
# - id
# - user_id
# - year_month
# - week
# - text_no
# - japanese_theme
# - japanese_score
# - japanese_memo
# - japanese_review
# - math_theme
# - math_score
# - math_memo
# - math_review
# - science_theme
# - science_score
# - science_memo
# - science_review
# - social_theme
# - social_score
# - social_memo
# - social_review


2.times do |n|
  user = User.create!(parent_name: "parentname#{n+1}",
               email: "test#{n+1}@test.com",
               password_digest: "password",
               child_name: "childname#{n+1}",
               passing_score: 80,
               failing_score: 60)
  # 5.times do |t|
  #   user.tests.create!()
  # end
end

# マイグレーションファイルに修正を加えた場合
# rails db:migrate:reset
# rails db:seed

# マイグレーションファイルに変更がない場合
# rails db:reset