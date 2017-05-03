class Lesson

  attr_accessor :name, :body

  def initialize(name, body)
    @name = name
    @body = body
  end

  def submittable?
    return false
  end
end






# * The `Lesson` class should have `name` and `body` instance variables, which should be both readable and writeable.
# * The `Lesson` class should have a `#submittable?` method that returns `false`.
# * `Challenge` and `SystemCheck` classes are submittable. Ensure that calling `#submittable?` on these objects returns `true`.
# * A `SystemCheck` should have an average grade.
# * A `Video` class has a `url` instance variable that is readable, but not writeable.
# * Write RSpec tests for these functionalities.
#"control-shift-m === .md preview"
