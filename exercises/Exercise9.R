# Bar chart with base graphics
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
