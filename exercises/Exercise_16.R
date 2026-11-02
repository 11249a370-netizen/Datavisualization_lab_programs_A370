 students <- data.frame(
  Student = c(
    "Srinivasan", "Siva", "Ganga", "Srinath", "Ganesh",
    "Anil", "Deepika", "Radhakrishna", "Kalyani", "Harsha"
  ),
  Math = c(82, 72, 93, 94, 96, 92, 90, 94, 90, 88),
  Science = c(89, 90, 91, 92, 89, 88, 87, 85, 89, 91),
  English = c(90, 92, 93, 94, 97, 96, 94, 93, 92, 90),
  Hours = c(5.0, 4.0, 6.0, 3.0, 5.5, 3.5, 2.0, 8.0, 1.0, 6.0)
)

library(ggplot2)

scatter_plot <- ggplot(students, aes(x = Hours, y = Math)) +
  geom_point(color = "#3498db", size = 3) +
  labs(
    title = "Study Hours vs Math Scores",
    x = "Study Hours",
    y = "Math Score"
  ) +
  theme_minimal()

print(scatter_plot)

ggsave(
  filename = "scatter_r.png",
  plot = scatter_plot,
  width = 8,
  height = 5,
  dpi = 150
)

avgs <- colMeans(students[, c("Math", "Science", "English")])

print(avgs)

png("barplot_r.png", width = 800, height = 500)

barplot(
  avgs,
  main = "Average Subject Scores",
  xlab = "Subject",
  ylab = "Average Score",
  col = c("#3498db", "#2ecc71", "#e74c3c"),
  ylim = c(0, 100)
)

dev.off()
