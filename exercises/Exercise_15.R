students <- data.frame(
  Student = c(
    "Srinivasan", "Siva", "Ganga", "Srinath", "Ganesh",
    "Anil", "Deepika", "Radhakrishna", "Kalyani", "Harsha"
  ),
  Math = c(82, 72, 93, 94, 96, 92, 90, 94, 90, 88),
  Science = c(89,90,91,92,89,88,87,85,89,91),
  English = c(90,92,93,94,97,96,94,93,92,90),
  Hours = c(5.0,4.0,6.0,3.0,5.5,3.5,2.0,8.0,1.0,6.0)
)
# Count A-grades (>=85) per subject
a_grades <- c(
  Math = sum(students$Math >= 85),
  Science = sum(students$Science >= 85),
  English = sum(students$English >= 85)
)

pie(
  a_grades,
  main = "A-Grade Distribution by Subject",
  col = c("#3498db", "#2ecc71", "#e74c3c"),
  labels = paste(
    names(a_grades),
    "\n",
    a_grades,
    "students"
  )
)
