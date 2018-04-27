require_relative "../config/environment.rb"

class Student
  attr_accessor :name, :grade
  attr_reader :id

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  def initialize(id = nil, name, grade)
    @name = name
    @grade = grade
  end

  def drop_table
    sql = <<-SQL
      DROP TABLE students;
    SQL

    DB[:conn].exec(sql)
  end


end
