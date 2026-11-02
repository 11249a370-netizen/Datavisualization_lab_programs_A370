import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

data = {
    "Student": [
        "sriram","siva,","naveen","sriraghuram","ganesh","anil","naga","mohitha","niranjan","kiran"
    ],
    "Math": [92,98,98,60,56,94,90,89,90,87 ],
    "Science": [90, 82, 76, 98, 92, 80, 79, 91, 89, 95],
    "English": [91, 78, 69, 79, 82, 88, 89, 90, 92, 97],
    "age": [17, 18, 16, 17, 19, 20, 16, 19, 18, 18],
    "hours_Studied": [3, 4, 5, 7, 10, 8, 4, 8, 6, 5]
}
plt.figure(figsize=(7, 5))

plt.hist(
    df["Math"],
    bins=5,
    color="#9b59b6",
    edgecolor="black",
    alpha=0.8
)

plt.title("Distribution of Math Scores")
plt.xlabel("Score Range")
plt.ylabel("Number of Students")

plt.axvline(
    df["Math"].mean(),
    color="red",
    linestyle="--",
    label=f'Mean: {df["Math"].mean():.1f}'
)

plt.legend()
plt.tight_layout()

plt.savefig("histogram.png", dpi=150)
plt.show()
