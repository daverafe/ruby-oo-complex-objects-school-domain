# code here!
require "pry"

class School
    attr_accessor :name, :roster 
    def initialize(name, roster = {})
        @name = name 
        @roster = roster 
    end

    def add_student(name, grade)
       if @roster.include?(grade) 
        @roster[grade] << name 
       else
        @roster[grade] = [name] 
        end
    end

    def grade(grade)
        @roster[grade] 
    end

    def sort
        @roster.each do |grades, students|
            students.sort!
        end
    end
end