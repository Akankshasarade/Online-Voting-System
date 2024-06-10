# Online Voting System

## Overview

This project is an Online Voting System developed using Java, Spring Boot, and JSP. The system allows users to register, log in, vote for candidates, and view voting results. It also includes administrative functionalities to manage voters and view the election outcomes.

## Features

1. **User Registration**: New users can register by providing their details.
2. **User Login**: Registered users can log in to the system.
3. **Voting**: Logged-in users can vote for their preferred candidates.
4. **Admin Dashboard**: Admin can manage voters and view voting results.
5. **Contact Support**: Users can contact support for assistance.
6. **Profile Management**: Users can manage their profiles.
7. **Download Results**: Users can download the voting results.

## Technologies Used

- Java
- Spring Boot
- JSP
- MySQL
- HTML/CSS
- JavaScript

## Database Schema

### Voter Table

### Users Table for Registration

```sql

## Installation and Setup

1. **Clone the repository**:
   ```bash
   git clone https://github.com/yourusername/online-voting-system.git
   cd online-voting-system
   ```

2. **Set up the database**:
   - Open MySQL and run the provided SQL scripts to create the necessary databases and tables.
   - Make sure to update the database connection details in your application properties.

3. **Build and run the application**:
   ```bash
   mvn clean install
   mvn spring-boot:run
   ```

4. **Access the application**:
   - Open a web browser and go to `http://localhost:8080`.

## Usage

- **Register**: Go to the registration page and fill in your details.
- **Login**: Use your credentials to log in.
- **Vote**: Select your preferred candidate and submit your vote.
- **View Results**: Go to the results page to view or download the voting results.

## Project Structure

- `src/main/java/com/Education/LOGIN/` - Contains the main application and controller classes.
- `src/main/resources/templates/` - Contains JSP files for the views.
- `src/main/resources/static/` - Contains static resources like CSS and JavaScript files.
- `src/main/resources/application.properties` - Configuration for the database connection.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Make your changes and commit them (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License.

## Contact

For any inquiries or issues, please contact [Akanksha Sarade] at [akankshasarade1506@gmail.com].
