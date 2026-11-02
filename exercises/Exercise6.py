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
import matplotlib.pyplot as plt
import seaborn as sns

melted = df.melt(
    id_vars="Student",
    value_vars=["Math", "Science", "English"],
    var_name="Subject",
    value_name="Score"
)

plt.figure(figsize=(8, 5))

sns.boxplot(
    x="Subject",
    y="Score",
    data=melted,
    palette=["#3498db", "#2ecc71", "#e74c3c"]
)

plt.title("Score Distribution by Subject (Box Plot)")
plt.tight_layout()

plt.savefig("boxplot.png", dpi=150)
plt.show()
