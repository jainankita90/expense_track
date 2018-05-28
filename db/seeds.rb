# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


UserEvent.create(
	[{
		id: 1, name: 'Party1'},{
		id: 2, name: 'Party2'},{
		id: 3, name: 'Party3'}
])

Category.create(id: 1, name: 'Foods', parent_id: nil)
Category.create(id: 2, name: 'Snacks', parent_id: 1)
Category.create(id: 3, name: 'Vegies', parent_id: nil)
Category.create(id: 4, name: 'Utililty', parent_id: nil)
Category.create(id: 5, name: 'Bills', parent_id: 4)
Category.create(id: 6, name: 'Cleaning', parent_id: 4)
Category.create(id: 7, name: 'Enterteanment', parent_id: 4)

Expense.create(member_name: ['ankita jain', 'anupam arya', 'Ranu', 'pampi'], amount: 100, user_event_id:1, category_id:1)