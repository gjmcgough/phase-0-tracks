require 'sqlite3'
# require 'faker'

db = SQLite3::Database.new("customers.db")
db.results_as_hash = true

create_table = <<-SQL
  CREATE TABLE IF NOT EXISTS customers(
    id INTEGER PRIMARY KEY,
    business_name VARCHAR(255),
    primary_contact_name VARCHAR(255),
    phone INT
  )
SQL

def add_customer(db, business_name, primary_contact_name, phone)
	db.execute("INSERT INTO customers (business_name, primary_contact_name, phone) VALUES (?, ?, ?)", [business_name, primary_contact_name, phone])
end


# UI
loop do
puts "Would you like to add a customer? (y/n)"
new_customer = gets.chomp
	if new_customer == "n"
		break
	elsif new_customer == "y"
		puts "What is the customer business name?"
		business_name = gets.chomp
		puts "What is the customer primary contact name?"
		primary_contact_name = gets.chomp
		puts "What is the customer phone number?"
		phone = gets.to_i
		add_customer(db, business_name, primary_contact_name, phone)
	else
		puts "I did not understand."
	end
end



# DRIVER CODE

# db.execute(create_table)
# db.execute("INSERT INTO customers (business_name, primary_contact_name, phone) VALUES ('Coconut Peets', 'Peet', 6195556789)")
# customers = db.execute("SELECT * FROM customers")
# puts customers.class
# p customers
# add_customer(db, "Joe Roper's Ding Repair", "Joe Roper", 8582134214)