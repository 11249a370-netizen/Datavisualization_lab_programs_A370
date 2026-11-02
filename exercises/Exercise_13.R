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
ggplot(students, aes(x = Hours, y = Math, label = Student)) +
  geom_point(aes(color = Math), size = 4) +
  geom_smooth(
    method = "lm",
    se = TRUE,
    color = "steelblue",
    linetype = "dashed"
  ) +
  geom_text(vjust = -1, size = 3) +
  scale_color_gradient(
    low = "orange",
    high = "darkblue"
  ) +
  labs(
    title = "Hours Studied vs Math Score",
    x = "Hours Studied",
    y = "Math Score"
  ) +
  theme_minimal()
