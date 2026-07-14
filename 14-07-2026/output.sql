# Expected Output

This document contains the expected output for the SQL queries executed on the **Employees** table.

---

## Sample Employee Data

| emp_id | emp_name | department | salary | city | experience |
|--------|----------|------------|--------|------------|------------|
|101|Rahul|IT|85000|Hyderabad|5|
|102|Sneha|HR|52000|Bangalore|2|
|103|Vikram|Finance|91000|Mumbai|7|
|104|Anita|Sales|45000|Chennai|3|
|105|Ramesh|IT|78000|Hyderabad|6|
|106|Priya|Finance|75000|Pune|4|
|107|Kiran|HR|48000|Hyderabad|2|
|108|Divya|IT|68000|Bangalore|5|
|109|Arjun|Sales|55000|Mumbai|4|
|110|Neha|Finance|82000|Hyderabad|6|
|111|Ravi|IT|95000|Bangalore|8|
|112|Pooja|HR|47000|Chennai|1|

---

# SELECT

### 1. Display all employee details
**Output:** Returns all 12 employee records.

### 2. Employee names and salaries

| Employee | Salary |
|----------|--------|
|Rahul|85000|
|Sneha|52000|
|Vikram|91000|
|Anita|45000|
|Ramesh|78000|
|Priya|75000|
|Kiran|48000|
|Divya|68000|
|Arjun|55000|
|Neha|82000|
|Ravi|95000|
|Pooja|47000|

### 3. Employee names and departments

Rahul - IT

Sneha - HR

Vikram - Finance

Anita - Sales

Ramesh - IT

Priya - Finance

Kiran - HR

Divya - IT

Arjun - Sales

Neha - Finance

Ravi - IT

Pooja - HR

### 4. Employees from IT

- Rahul
- Ramesh
- Divya
- Ravi

### 5. Employee names and experience

Rahul - 5

Sneha - 2

Vikram - 7

Anita - 3

Ramesh - 6

Priya - 4

Kiran - 2

Divya - 5

Arjun - 4

Neha - 6

Ravi - 8

Pooja - 1

---

# WHERE

**Salary > 70000**

Rahul

Vikram

Ramesh

Priya

Neha

Ravi

**City = Hyderabad**

Rahul

Ramesh

Kiran

Neha

**Experience < 4**

Sneha

Anita

Kiran

Pooja

**Finance Department**

Vikram

Priya

Neha

**Salary = 52000**

Sneha

---

# GROUP BY

| Department | Total Salary |
|------------|-------------|
|IT|326000|
|HR|147000|
|Finance|248000|
|Sales|100000|

| Department | Average Salary |
|------------|---------------|
|IT|81500|
|HR|49000|
|Finance|82666.67|
|Sales|50000|

| City | Employee Count |
|------|---------------|
|Hyderabad|4|
|Bangalore|3|
|Mumbai|2|
|Chennai|2|
|Pune|1|

| Department | Max Salary |
|------------|-----------|
|IT|95000|
|HR|52000|
|Finance|91000|
|Sales|55000|

| Department | Minimum Experience |
|------------|-------------------|
|IT|5|
|HR|1|
|Finance|4|
|Sales|3|

---

# HAVING

Departments with more than 3 employees

- IT

Departments with average salary greater than 60000

- IT
- Finance

Cities having more than 2 employees

- Hyderabad
- Bangalore

Departments with total salary greater than 200000

- IT
- Finance

Departments with maximum salary above 90000

- IT
- Finance

---

# LIMIT

Top 5 highest paid employees

1. Ravi
2. Vikram
3. Rahul
4. Neha
5. Ramesh

Top 3 experienced employees

1. Ravi
2. Vikram
3. Ramesh

Top 2 Finance salaries

1. Vikram
2. Neha

Top 4 Hyderabad employees

Rahul

Ramesh

Kiran

Neha

Highest salary employee

Ravi

---

# DISTINCT

Departments

- IT
- HR
- Finance
- Sales

Cities

- Hyderabad
- Bangalore
- Mumbai
- Chennai
- Pune

Experience

1

2

3

4

5

6

7

8

---

# COMPARISON OPERATORS

Salary >= 80000

Rahul

Vikram

Neha

Ravi

Experience <= 3

Sneha

Anita

Kiran

Pooja

Salary <> 45000

All employees except Anita

Salary < 50000

Anita

Kiran

Pooja

Experience > 5

Vikram

Ramesh

Neha

Ravi

---

# LOGICAL OPERATORS

IT AND Salary >70000

Rahul

Ramesh

Ravi

Hyderabad OR Bangalore

Rahul

Sneha

Ramesh

Kiran

Divya

Neha

Ravi

HR AND Experience <3

Sneha

Kiran

Pooja

Salary >60000 OR Experience >6

Rahul

Vikram

Ramesh

Priya

Divya

Neha

Ravi

NOT Sales

All employees except Anita and Arjun

---

# IN / NOT IN

Hyderabad or Mumbai

Rahul

Ramesh

Kiran

Neha

Vikram

Arjun

IT or Finance

Rahul

Ramesh

Divya

Ravi

Vikram

Priya

Neha

NOT Chennai or Pune

Rahul

Sneha

Vikram

Ramesh

Kiran

Divya

Arjun

Neha

Ravi

Salary IN (45000, 75000, 91000)

Anita

Priya

Vikram

Department NOT IN (HR, Sales)

Rahul

Ramesh

Divya

Ravi

Vikram

Priya

Neha

---

# BETWEEN

Salary BETWEEN 50000 AND 80000

Sneha

Ramesh

Priya

Divya

Arjun

Experience BETWEEN 3 AND 6

Rahul

Anita

Ramesh

Priya

Divya

Arjun

Neha

Employee ID BETWEEN 105 AND 112

Ramesh

Priya

Kiran

Divya

Arjun

Neha

Ravi

Pooja

Salary NOT BETWEEN 40000 AND 60000

Rahul

Vikram

Ramesh

Priya

Neha

Ravi

Experience BETWEEN 2 AND 4

Sneha

Anita

Priya

Kiran

Arjun

---

# LIKE

Names starting with 'R'

- Rahul
- Ramesh
- Ravi

Names ending with 'a'

- Sneha
- Anita
- Priya
- Pooja

Names containing 'v'

- Vikram
- Divya
- Ravi

Cities starting with 'B'

- Bangalore

Departments ending with 's'

- Sales
