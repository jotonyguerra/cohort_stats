require 'date'
require_relative "student"
require_relative "system_check"
class Cohort

  attr_reader :title, :start_date, :end_date
  attr_accessor :students, :system_checks, :career_kickoff, :submissions

  def initialize(title, start_date, end_date)
    @students = []
    @system_checks = []
    @title = title
    @start_date = start_date
    @end_date = end_date
    @career_kickoff = end_date += 4
  end

  def enroll(student)
    if !@students.include?(student)
      @students << student
    end
  end

  def assign(check)
    @system_checks << check
  end

  def roster
    return "#{self.title} \n #{@students[0].name} \n #{@students[1].name}, #{@students[2].name} \n #{@students[0].email}, #{@students[1].email}, #{@students[2].email}  "
  end

  def system_check_completed?(person)
    # binding.pry
    if self.system_checks[0].submissions.size != 3
      return false
    elsif self.system_checks[0].submissions.size == 3
      return true
    end
  end


end
