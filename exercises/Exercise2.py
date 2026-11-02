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

df = pd.DataFrame(data)
print(df)
plt.figure(figsize=(10, 5))

plt.plot(df["Student"], df["Math"],
         marker="o", label="Math", color="blue")

plt.plot(df["Student"], df["Science"],
         marker="s", label="Science", color="green")

plt.plot(df["Student"], df["English"],
         marker="^", label="English", color="red")

plt.title("Student Score Trends", fontsize=14)
plt.xlabel("Student")
plt.ylabel("Marks")
plt.xticks(rotation=45)
plt.legend()
plt.tight_layout()

plt.savefig("line_chart.png", dpi=150)
plt.show()
