require 'sqlite3'

db = SQLite3::Database.new("study_time.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS study_time(
    id INTEGER PRIMARY KEY,
    day_of_week VARCHAR(255),
    minutes INT
  )
SQL

db.execute(create_table_cmd)

def log_study_time(db, day_of_week, minutes)
  db.execute("INSERT INTO study_time (day_of_week
  	, minutes) VALUES (?, ?)", [day_of_week, minutes])
end

def view_study_time(db)
	db.execute("SELECT * FROM study_time")
end 

loop do 
	puts "Enter your study time, starting with the day of the week(or type 'q' for quit):"
	day_of_week = gets.chomp
	break if day_of_week == 'q'

	puts "Now enter your study time in minutes:"
	minutes = gets.chomp
	
	log_study_time(db, day_of_week, minutes)
	p view_study_time(db)
end 