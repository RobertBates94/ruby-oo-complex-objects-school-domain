require 'pry'

class School
    attr_accessor :roster 

    def initialize(school)
        @school = school
        @roster = {}
    end

    def add_student(name, grade)
        @roster[grade] ||= []
         @roster[grade] << name
    end

    def grade(grade)
    @roster[grade]
    end

    def sort
        @students = {}
        @roster.each do |grades, student|
        @students[grades] = student.sort 
        end
        @students
    end
end