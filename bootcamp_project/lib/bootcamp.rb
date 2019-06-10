class Bootcamp
    def initialize(name,slogan,student_capacity)
      @name = name
      @slogan = slogan
      @student_capacity = student_capacity
      @teachers = []
      @students = []
      @grades = Hash.new{|k,v|k[v]=[]}
    end
    def name
      return @name
    end
    def slogan
      return @slogan
    end
    def teachers
      return @teachers
    end
    def students
      return @students
    end
    def hire(teacher)
      @teachers.push teacher
    end
    def enroll(student)
      if @student_capacity > @students.length
          @students.push student 
          return true
      elsif @student_capacity == @students.length
          return false
      end
    end
    def enrolled?(student)
      @students.include? student
    end
  #   PART 2
    def student_to_teacher_ratio
      @students.length / @teachers.length
    end
    def add_grade(student,grade)
      if enrolled?(student)
          @grades[student] << grade #need some digusting
          return true
      else 
          false
      end
    end
    def num_grades(student)
      @grades[student].length
    end
    def average_grade(student)
      if !enrolled?(student) || @grades.empty?
          nil
      else
           p average_grade=@grades[student].sum / @grades[student].length 
      end
    end
  
  
  end
  