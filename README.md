Here is the final, polished **README.md** file for your **QR Attendance Monitoring System**, including the screenshots you just shared:

---

<div align="center">  

# 🔥 QR Attendance Monitoring System 🔥

Effortlessly manage attendance with QR codes and real-time monitoring – perfect for modern classrooms, organizations, and events.

</div>  

---

## 🚀 Overview

The **QR Attendance Monitoring System** is a cutting-edge application that merges QR-based attendance tracking with robust backend monitoring. Built on Django, Flask, and MySQL, it provides a seamless, secure, and highly scalable solution for organizations, schools, and businesses that require efficient attendance management.

---

## 📝 Key Features

* **📱 Automatic IP Detection:** Generates unique QR codes based on device IP for fast local network connections.
* **🔐 Secure Authentication:** Protects access with role-based authentication for admins, teachers, and students.
* **📊 Real-Time Attendance:** Tracks attendance with live updates, eliminating the need for manual record-keeping.
* **📅 Advanced Reporting:** Generate detailed reports with trends, summaries, and analytics for better insights.
* **📂 Data Management:** Efficiently stores, searches, and filters attendance data for quick access.
* **📬 Automated Notifications:** Sends alerts for absentees and upcoming classes or meetings.
* **⚙️ Integration Ready:** Easily connects with existing systems for seamless data management.
* **🎯 Scalable Design:** Handles large numbers of users and attendance records without compromising performance.
* **🖥️ User-Friendly Interface:** Simple, intuitive design for smooth user experience.

---

## 📋 Prerequisites

Make sure the following are installed before starting:

* **Python 3**
* **Django**
* **Flask**
* **qrcode**
* **MySQL Database**
* **MySQL Connector:** (`pip install mysql-connector-python`)
* **Modern Web Browser** (Chrome, Firefox, Safari, or Edge)

---

## 🔧 Setup

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/AzeemIdrisi/QR-Attendance-System
   cd QR-Attendance-System
   ```

2. **Install Dependencies:**

   ```bash
   pip install -r requirements.txt
   ```

3. **Database Configuration:**

   * Create a MySQL database for the system.
   * Import the `db.sql` file to set up the required tables and schema.
   * Update your database credentials in the `app.py` file.

4. **Run the Django Server:**

   ```bash
   python manage.py runserver 0.0.0.0:8000
   ```

5. **Access the System:**

   * Open `http://localhost:8000` in your web browser to access the system.

---

## 🗄️ Database Configuration

Make sure the following settings in `app.py` are updated correctly:

* **Host:** The IP address of your MySQL server.
* **Port:** The port number for MySQL (default: 3306).
* **Database:** The name of the database you created.
* **Username:** Your MySQL username.
* **Password:** The password for your MySQL user.

---

## 🎯 Working

### Admin Functions

* Register and manage students and teachers.
* Update student details like personal information, class, and section.
* Monitor attendance trends and generate reports.

### Teacher Functions

* Create and manage classes.
* Mark and submit attendance in real-time.
* View attendance records for better student management.

### Student Functions

* Scan QR codes for quick attendance.
* View personal attendance history.

---

## 🖼️ Screenshots
![1d5870e5-9c23-49cc-8be2-f9c0d7045023](https://github.com/user-attachments/assets/7f4f50fa-ec4a-48d9-820d-ec962784cd84)
![1d5870e5-9c23-49cc-8be2-f9c0d7045023](https://github.com/user-attachments/assets/2e68929d-dd66-4732-b114-88d2a8d64d53)
![b89021a7-f08d-47d7-aa4b-d044ad217f4f](https://github.com/user-attachments/assets/820d70a5-7d6d-4148-af46-9bed08352a60)
![283f3f94-d709-4b9a-baa4-1ade835f6667](https://github.com/user-attachments/assets/a7afc91e-1af9-440d-a034-f8642f97a654)
![49c8bcaa-c729-4bcb-8d6b-5062aff6602e](https://github.com/user-attachments/assets/177d145f-6e30-431c-9e8f-53e7406348f1)
![21cacafd-943c-4ad0-8ab6-81c148be37fb](https://github.com/user-attachments/assets/f5338048-d3e4-4537-9381-28c1d695304f)
![4b7423e4-ba85-4276-aa53-f47cc7507c5d](https://github.com/user-attachments/assets/792cfd7e-dfb9-4581-a37e-53e64f6df5df)
![3ab1c43f-378f-42b7-b326-dd2c62207ea1](https://github.com/user-attachments/assets/3313953c-fe6b-4baa-9176-809c5dae3764)
![1eab76fb-447f-4bc0-bc04-45e4b1239d60](https://github.com/user-attachments/assets/43a8625d-82ea-4a76-92a7-c2453f9980d6)


### 📋 Main Page

![Main Page](./49c8bcaa-c729-4bcb-8d6b-5062aff6602e.png)

### 🔑 Login Page

![Login Page](./1eab76fb-447f-4bc0-bc04-45e4b1239d60.png)

### 📊 Admin Dashboard

![Admin Dashboard](./1d5870e5-9c23-49cc-8be2-f9c0d7045023.png)

### 👨‍🏫 Teacher Registration

![Teacher Registration](./3ab1c43f-378f-42b7-b326-dd2c62207ea1.png)

### 👩‍🎓 Student Registration

![Student Registration](./b89021a7-f08d-47d7-aa4b-d044ad217f4f.png)

### 🔄 Student Form

![Student Form](./4b7423e4-ba85-4276-aa53-f47cc7507c5d.png)

### 📅 Attendance Report

![Attendance Report](./21cacafd-943c-4ad0-8ab6-81c148be37fb.png)

### 📝 Profile Page

![Profile Page](./283f3f94-d709-4b9a-baa4-1ade835f6667.png)

---

## 🤝 Contributions

We welcome contributions from the community! Feel free to fork the repository, make changes, and submit pull requests.

---

## Developers



---

## 📄 License

This project is licensed under the MIT License. See the LICENSE file for more details.

---

Would you like me to include a short video demo section to showcase the flow, like logging in, registering, and generating reports? It could make the README even more engaging. Just let me know if you want me to tweak anything else! 😊
