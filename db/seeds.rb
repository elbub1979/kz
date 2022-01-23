# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Очищаем таблицу Phones
Phone.destroy_all
# Очищаем таблицу Users
User.destroy_all
# Очищаем таблицу Operators
Operator.destroy_all
# Очищаем таблицу Cabinets
Cabinet.destroy_all
# Очищаем таблицу Positions
Position.destroy_all
# Очищаем таблицу Departments
Department.destroy_all

# Заполняем базу операторами
Operator.create([{ name: 'MTS' }])
Operator.create([{ name: 'Beeline' }])
Operator.create([{ name: 'Megafon' }])
Operator.create([{ name: 'internal' }])

# Заполняем базу кабинетов
Cabinet.create(number: '514')

# Заполняем базу должностей
Position.create(title: 'Начальник отдела')

# Заполняем базу подразделений
Department.create(title: 'Отдел информационных технологий')


# Заполняем базу пользователями
User.create(fname: 'Илья', pname: 'Алекандрович', lname: 'Леушкин',
            email: 'I.leushkin@redstar.ru',
            cabinet: Cabinet.find_by(number: '514'),
            position: Position.find_by(title: 'Начальник отдела'),
            department: Department.find_by(title: 'Отдел информационных технологий'))

# Заполняем базу телефонами
Phone.create(number: '79855101910', operator: Operator.find_by(name: 'MTS'),
             user: User.find_by(email: 'i.leushkin@redstar.ru'))
Phone.create(number: '79680622979', operator: Operator.find_by(name: 'Beeline'),
             user: User.find_by(email: 'i.leushkin@redstar.ru'))
Phone.create(number: '111', operator: Operator.find_by(name: 'internal'),
             user: User.find_by(email: 'i.leushkin@redstar.ru'))
