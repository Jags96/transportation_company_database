# Transportation Management Company Database

## Overview

This repository contains the **Transportation Management Company Database** designed to manage operations for a transportation company in India, focusing on road-based transport services. The database is intended to handle both direct services for individual customers and SaaS (Software as a Service) offerings for external organizations.

The database supports the following primary use cases:
- Managing individual and group ride bookings.
- Vehicle and driver management.
- Invoicing and financial record-keeping.
- SaaS platform subscription management for external organizations.

The database is structured to ensure efficient operations, data integrity, and robust security features, including role-based access controls.

## Contents

- **`database.sql`**: SQL code to recreate the entire database, including tables, relationships, and sample data. This script was exported from a live MySQL environment (PHPMyAdmin).
- **`database_desc.pdf`**: Database description document that outlines:
  - Key entities and relationships.
  - Business rules and data constraints.
  - Data dictionary and ERM (Entity-Relationship Model) table.
- **`Normalization.pdf`**: A document that shows the normalization process for the database, including transformations from 1NF to 3NF.

## Features

- **Bookings**: Customers can make bookings for individual rides, group transport, or goods transportation. Bookings are linked to rides with customer-specific details.
- **Rides**: Each booking is tied to a ride, which includes service type, vehicle, and driver(s).
- **Vehicles and Drivers**: Vehicles are assigned to rides, ensuring no conflicts with double bookings. Drivers, whether employed by the company or contracted through service providers, are assigned to rides.
- **Service Providers**: Individual and entity service providers manage their own fleet of vehicles. Entity service providers must own at least two vehicles.
- **Invoicing**: After completing a ride, invoices are generated. For shared rides, individual customers are billed separately.
- **SaaS Platform**: External organizations subscribe to a SaaS platform, and each organization is assigned an Organization Manager who oversees its account.

## Database Structure

The database captures and manages the following key entities:
- **Customers**: Individuals who make bookings for rides or vehicle rentals.
- **Bookings**: Represents each ride booking, linked to a specific customer and service.
- **Rides**: Each booking is associated with a ride, containing vehicle and driver information.
- **Vehicles**: Vehicles are assigned to rides and are linked to specific service providers.
- **Drivers**: Drivers are assigned to rides, with the possibility of multiple drivers for longer trips.
- **Service Providers**: Individual or entity providers who own and operate vehicles.
- **Invoices**: Generated for completed rides, detailing charges and payments.
- **External Organizations**: Organizations using the company's SaaS platform, with subscriptions tied to specific service plans.
- **Organization Managers**: Company representatives assigned to manage external organization accounts.

## Key Business Rules & Constraints

- **Vehicle Booking**: A vehicle can only be assigned to one active ride at a time.
- **Customer Ride**: Customers can only have one active ride at any given moment.
- **Driver Assignment**: For longer rides, up to three drivers may be assigned to ensure safety.
- **Role-Based Access**: Admin users have full control over the system, including data access and permissions. Regular employees (e.g., customer service reps, drivers) have restricted access.
- **SaaS Subscriptions**: External organizations are assigned a subscription plan that controls which features they can access.

## Normalization

The database is designed to adhere to normalization standards, with transformations from **1NF (First Normal Form)** to **3NF (Third Normal Form)**. This ensures that data is structured efficiently, reducing redundancy and ensuring data integrity.

You can find a detailed explanation of the normalization process in the **Normalization.pdf** document.

## Getting Started

### Prerequisites

To use the database, you’ll need:
- A MySQL-compatible database server (e.g., MySQL, MariaDB).
- Access to a MySQL client like **phpMyAdmin** or **MySQL Workbench**.

### Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Jags96/transportation_company_database.git
  ```
   ```bash
   cd transportation_company_database
   ```
   
2. **Import the database**:
   - Open the `database.sql` file in your MySQL client (e.g., **phpMyAdmin**).
   - Execute the SQL script to create the database and tables.

3. **Review the documentation**:
   - Open `database_desc.pdf` to understand the database schema, relationships, and business rules.
   - Check `Normalization.pdf` for detailed normalization steps.

4. **Start using the database**:
   - The database is now ready for use. You can start adding data (customers, bookings, rides, etc.) via your preferred client or integrate the schema into your application.
