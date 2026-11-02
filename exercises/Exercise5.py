import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd
import numpy as np

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
numeric_df = df[
    ["Math", "Science", "English", "hours_Studied"]
]

corr = numeric_df.corr()

plt.figure(figsize=(7, 5))

sns.heatmap(
    corr,
    annot=True,
    fmt=".2f",
    cmap="coolwarm",
    linewidths=0.5,
    vmin=-1,
    vmax=1
)

plt.title("Correlation Heatmap")
plt.tight_layout()

plt.savefig("heatmap.png", dpi=150)
plt.show()
