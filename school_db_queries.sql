select * from enrollment
join course
on CourseID = enrollment.courseid
join student
on student.id = enrollment.studentid;

select * from enrollment e
join student s1
on s1.id = e.StudentID
join student s2
on s2.FirstName;
join course
