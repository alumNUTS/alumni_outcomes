# 
# Seed Data for testing app
#
#
#
#

Officer.create(name: 'Kyle Lee', email: 'kyle@example.com', password: 'password')

Cohort.create(name: 'Melville', officer_id: 1, start_date: Date.parse('2015/04/27'), end_date: Date.parse('2015/07/21'))

Student.create(name: 'Bobby King', email: 'king.robertjoseph@gmail.com', password: 'password', city: 'New York', state: 'New York')
Student.create(name: 'Dasha Murauyova', email: 'dashamuravjova@gmail.com', password: 'password', city: 'New York', state: 'New York')
Student.create(name: 'Domenica LaLima', email: 'dlalima@yahoo.com', password: 'password', city: 'New York', state: 'New York')
Student.create(name: 'Mark Paulson', email: 'markpaulson1@hotmail.com', password: 'password', city: 'New York', state: 'New York')
Student.create(name: 'Orin Xie', email: 'orin.xie@gmail.com', password: 'password', city: 'New York', state: 'New York')

