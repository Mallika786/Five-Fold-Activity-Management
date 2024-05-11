**README.md**

# Five Fold Activity Management System - Banasthali Vidyapith

## Introduction
This project is a Five Fold Activity Management System based on the activities conducted at Banasthali Vidyapith. The Five Fold activities include Physical, Aesthetic, Moral, Practical, and Intellectual aspects. This system allows users to manage these activities efficiently through a web-based interface.

## Features
- **User Authentication**: Users can log in securely to access the system.
- **Activity Management**: Users can perform CRUD (Create, Read, Update, Delete) operations on various activities.
- **Category-wise Management**: Activities are categorized into Physical, Aesthetic, Moral, Practical, and Intellectual categories for better organization.
- **User-Friendly Interface**: The interface is designed to be intuitive and easy to use.

## Prerequisites
- **Java Development Kit (JDK)**: Ensure that JDK is installed on your system.
- **Apache Tomcat**: You need a servlet container like Apache Tomcat to deploy and run the JSP application.
- **Apache Derby Database**: Derby client is required for database operations.

## Installation
1. Clone the repository to your local machine.
   ```
   git clone https://github.com/yourusername/five-fold-activity-management.git
   ```

2. Import the project into NetBeans IDE.
   - Open NetBeans IDE.
   - Go to `File` > `Open Project...` and navigate to the directory where you cloned the project. Select the project folder and click `Open Project`.

3. Set up the Apache Derby database by following the instructions provided in the Derby documentation.

4. Configure the database connection in the `dbutil.java` file with your Derby database credentials.

5. Deploy the project on Apache Tomcat.

6. Access the application by navigating to `http://localhost:8080/Login.html` in your web browser.

## Usage
1. **Login**: Enter your username and password to log in to the system.

2. **Dashboard**: After logging in, you will be directed to the dashboard where you can navigate to different sections of the application.

3. **Activity Management**: 
   - Click on the respective activity category (Physical, Aesthetic, Moral, Practical, Intellectual) to view, add, update, or delete activities within that category.
   - Use the provided forms to add new activities or update existing ones.

4. **Logout**: Click on the logout button to securely log out from the system.
