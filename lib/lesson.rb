class Lesson
  def initialize(name, body)
    @name = name
    @body = body
  end

  def submittable?
    return false
  end
end

class Article

end

class Challenge < Lesson
  def submittable?
    return true
  end
end
