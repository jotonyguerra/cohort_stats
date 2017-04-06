require 'pry'
require_relative "system_check_submission"
require_relative "student"
class SystemCheck

  attr_reader :name, :due_date, :average_grade, :grade
  attr_accessor :submissions, :sum, :average, :student

  def initialize(name, due_date)
    @name = name
    @due_date = due_date
    @submissions = []
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    @sum = 0
    @submissions.each do |subs|
        @sum += subs.grade
        @average = @sum / 3.0
    end
    return @average
  end

  def did_student_complete_system_check?(person)
    # binding.pry
    if @submissions == []
      return false
    elsif @submissions[0].student == person || @submissions[1].student == person
      return true
    end
  end
end
