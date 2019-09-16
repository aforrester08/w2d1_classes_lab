require("minitest/autorun")
require("minitest/rg")
require_relative("../student.rb")

class TestStudent < MiniTest::Test

  def test_get_name
    student = Student.new("Alex", "E34")
    assert_equal("Alex", student.get_name())
  end

  def test_get_cohort
    student = Student.new("Alex", "E34")
    assert_equal("E34", student.get_cohort())
  end

  def test_set_name
    student = Student.new("Alex", "E34")
    assert_equal("Tony", student.set_name("Tony"))
  end

  def test_set_cohort
    student = Student.new("Alex", "E34")
    assert_equal("E33", student.set_cohort("E33"))
  end

  def test_student_say
    student = Student.new("Alex", "E34")
    assert_equal("I can talk", student.student_talk())
  end

  def test_say_favourite_language
    student = Student.new("Alex", "E34")
    assert_equal("I Love Ruby", student.say_favourite_language("Ruby"))
  end

end
