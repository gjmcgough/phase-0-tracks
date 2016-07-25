require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("customers.db")

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY,
    business_name VARCHAR(255),
    primary_contact_name VARCHAR(255),
    phone INT
  )
SQL

db.execute(create_table)