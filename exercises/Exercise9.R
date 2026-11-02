# Bar chart with base graphics
students <- data.frame(
  Student = c(
    "Srinivas", "Siva", "Naveen", "Srinath", "Ganesh",
    "Anil", "Deep", "Radhakrishna", "Kiran", "Harsha"
  ),
  Math = c(82, 72, 93, 94, 96, 92, 90, 94, 90, 88),
  Science = c(89,90,91,92,89,88,87,85,89,91),
  English = c(90,92,93,94,97,96,94,93,92,90),
  Hours = c(5.0,4.0,6.0,3.0,5.5,3.5,2.0,8.0,1.0,6.0)
)

avgs <- colMeans(students[, c("Math", "Science", "English")])

barplot(
  avgs,
  main = "Average Subject Scores",
  xlab = "Subject",
  ylab = "Average Score",
  col = c("#3498db", "#2ecc71", "#e74c3c"),
  ylim = c(0, 100),
  border = "black"
)

abline(h = mean(avgs), col = "darkgray", lty = 2)

legend(
  "topright",
  legend = paste("Overall Avg:", round(mean(avgs), 1)),
  lty = 2,
  col = "darkgray"
)
