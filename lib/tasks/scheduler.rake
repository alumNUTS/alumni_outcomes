
# updates the status of students to outcomes every day

namespace :scheduler do
  desc "Updates the students' status to outcomes"
  task outcomes: :environment do
     students = Student.all
      students.each do |student|
      if (Date.today - student.cohort.end_date) > 0
        student.status = "Outcome"
        student.save
        puts "updated students"
      end
    end
  end

end
