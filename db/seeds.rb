# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
admin = User.create! name: 'Administrator', role: 1
foo = User.create! name: 'Foo'
bar = User.create! name: 'Bar'
p1 = Post.create! title: 'Admin post', content: "Administrator's post.", user: admin
p2 = Post.create! title: 'Foo post', content: "foo's post.", user: foo
p3 = Post.create! title: 'Bar post', content: "bar's post.", user: bar
[p1, p2, p3].each do |post|
  Comment.create! content: "Administrator's comment.", user: admin, post: post
  Comment.create! content: "Foo's comment.", user: foo, post: post
  Comment.create! content: "Bar's comment.", user: bar, post: post
end
