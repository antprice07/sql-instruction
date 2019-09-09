select * from enrollment
join course
on CourseID = enrollment.courseid
join student
on student.id = enrollment.studentid;
