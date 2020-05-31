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
Post.create! title: 'Admin post', content: "Administrator's post.", user: admin
Post.create! title: 'Foo post', content: "foo's post.", user: foo
Post.create! title: 'Bar post', content: "bar post.", user: bar
