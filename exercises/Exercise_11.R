students <- data.frame(
  Student = c(
    "Srinivas", "Siva", "Naveen", "Srinath", "Ganesh",
    "Anil", "Deepika", "Radhakrishna", "kalyani", "Harsha"
  ),
  Math = c(82, 72, 93, 94, 96, 92, 90, 94, 90, 88),
  Science = c(89,90,91,92,89,88,87,85,89,91),
  English = c(90,92,93,94,97,96,94,93,92,90),
  Hours = c(5.0,4.0,6.0,3.0,5.5,3.5,2.0,8.0,1.0,6.0)
)
ggplot(students, aes(x = Math)) +
  geom_histogram(
    binwidth = 8,
    fill = "#9b59b6",
    color = "black",
    alpha = 0.8
  ) +
  geom_vline(
    aes(xintercept = mean(Math)),
    color = "red",
    linetype = "dashed",
    linewidth = 1
  ) +
  labs(
    title = "Distribution of Math Scores",
    x = "Score",
    y = "Count"
  ) +
  theme_classic()
