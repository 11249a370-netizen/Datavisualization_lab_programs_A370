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
ggplot(long_df, aes(x = Subject, y = Score, fill = Subject)) +
  geom_boxplot(alpha = 0.7, outlier.colour = "red") +
  geom_jitter(width = 0.2, alpha = 0.5) +
  scale_fill_brewer(palette = "Set2") +
  labs(
    title = "Score Distribution by Sub",
    x = "Subject", 
    y = "Score"
  ) +
  theme_light() +
  theme(legend.position = "none")
