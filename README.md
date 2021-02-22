# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Приложение представляет собой личный кабинет преподавателя, который является первым пользователем в системе и поэтому обладает расширенным диапозоном функций. Преподаватель создает задания, которые видят все ученики и могут прикреплять к ним решения. При этом удалять задания и редактрировать их текст может только преподаватель.

ruby '2.7.2'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'

gem 'sqlite3', '~> 1.4'
Должен быть установлен Imagemagick


