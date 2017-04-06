class SystemCheckSubmission

  attr_reader :student, :solution
  attr_accessor :grade

  def initialize(solution, student)
    @solution = solution
    @student = student
    @grade = 0
  end

  def assign_grade(grade)
    @grade = grade
    if @grade < 0
      raise InvalidGradeError
    end
  end

  def graded?
    if @grade != Grade::MEETS_EXPECTATIONS
      return false
    elsif @grade == Grade::MEETS_EXPECTATIONS
      return true
    end
  end

end

class InvalidGradeError < StandardError
end
