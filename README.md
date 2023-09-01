# Property Management Application

Welcome to the Property Management Application, a web-based platform for managing and listing properties. This application is built with Ruby on Rails and provides features for property entry, search, editing, and more.

## Table of Contents
- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Testing](#testing)
- [Deployment](#deployment)
- [Contributing](#contributing)
- [License](#license)

## Features

- User Registration and Authentication (Devise)
- Property Management:
  - Create, Edit, Update, Delete Properties
  - Listing and Pagination of Properties
  - Property Details View
  - Filtering Properties by Attributes
  - Upload and Display Property Photos (Active Storage)
- User Dashboard with CRUD Operations on User's Properties

## Prerequisites

Before you begin, ensure you have met the following requirements:
- Ruby (version 2.6.3 or higher)
- Ruby on Rails (version 5 or higher)
- PostgreSQL database
- Active Storage configured for file attachments
- A modern web browser

## Installation

1. Clone the repository:

   ```bash
    git clone <repository-url>

2. Install gem dependencies:

  ```bash
    bundle install```

3. Set up the database:

  ```bash
    rails db:create
    rails db:migrate

4. Seed the database with sample data (optional):

  ```bash
    rails db:seed

## Usage

Start the Rails server:

  ```bash
    rails server

Access the application in your web browser at http://localhost:3000.

## Project Structure

/app: Contains the main application code.
/config: Configuration files for the Rails application.
/db: Database-related files, including migrations and seed data.
/public: Publicly accessible files, including uploaded property photos.
/test: Test suite files.

## Testing
To run the test suite, use the following command:

  ```bash
    rails test
Deployment
You can deploy this application to platforms like Heroku, Railway, or Render. Ensure you set up the required environment variables, configure the database, and handle production-ready settings as needed.

Contributing
Contributions are welcome! If you'd like to contribute to this project, please follow the guidelines in CONTRIBUTING.md.

License
This project is licensed under the MIT License. See the LICENSE.md file for details.
