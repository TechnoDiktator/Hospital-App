# Hospital Management System

A full-stack J2EE Hospital Management Application that handles hospital operations, appointments, and user management.

## Technology Stack

### Backend
- Java (J2EE)
  - JSP (JavaServer Pages)
  - Servlets
  - JDBC
- MySQL Database

### Frontend
- HTML5 
- CSS3
- JavaScript
- Bootstrap

### Development Tools
- IDE: Eclipse
- Database: MySQL Workbench
- Build Tool: Maven
- Server: Apache Tomcat

## Features

### User Management
- Multi-user authentication system (Admin, Doctor, Patient)
- User registration and login/logout functionality
- Profile management and password updates
- Role-based access control

### Appointment System
- Book appointments with doctors
- View and manage appointment schedules
- Doctor availability tracking

### Admin Dashboard
- Doctor profile management (CRUD operations)
- View and manage appointments
- User management capabilities

### Doctor Features
- View assigned appointments
- Manage availability
- Update profile information

### Patient Features
- Book appointments
- View appointment history
- Update personal information

## Installation

1. Clone the repository
```bash
git clone https://github.com/yourusername/Hospital-App.git
```

2. Import the project in Eclipse as a Maven project

3. Update Maven dependencies
```bash
mvn clean install
```

4. Configure MySQL database connection

5. Deploy the application on Tomcat server

## Database Setup

1. Install MySQL Workbench
2. Create a new database
3. Configure the database connection properties in the application

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License

[MIT](https://choosealicense.com/licenses/mit/)