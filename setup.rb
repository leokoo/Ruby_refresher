require 'sqlite3'

$db = SQLite3::Database.new "students2.db"

module StudentDB
	def self.setup
		$db.execute(
			<<-SQL
				CREATE TABLE students (
					id INTEGER PRIMARY KEY AUTOINCREMENT,
					first_name VARCHAR(64) NOT NULL,
					last_name VARCHAR(64) NOT NULL,
					age INTERGER,
					created_at DATETIME NOT NULL,
					updated_at DATETIME NOT NULL
			);
		SQL
		)
	end

	def self.seed
		$db.execute(
			<<-SQL	
				INSERT INTO students
				(first_name, last_name, age, created_at, updated_at)
				VALUES
				('gg', 'lastgg', 12, DATETIME('now'), DATETIME('now'));
			SQL
		)
	end
end

StudentDB.setup
StudentDB.seed