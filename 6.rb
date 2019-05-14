module Test
  def result
    if @nota1+@nota2>8.0
      puts "Estudiante Aprobado"
    else
      puts "Estudiante Reprobado"
    end
  end
end

module Attendance
  def self.student_quantity
    puts @@quantity
  end
end

class Student
  @@quantity = 0
  include Test
  extend Attendance
  def initialize(nombre,nota1=4,nota2=4)
    @nombre = nombre
    @nota1 = nota1
    @nota2 = nota2
    @@quantity +=1
  end
end


s = Student.new("a",4,3)

s.result

10.times do
  Student.new("a",4,3)
end

Student.student_quantity
