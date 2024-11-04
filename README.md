# Airflow DBT Snowflake ETL Pipeline

## Overview
This project implements a data pipeline using Apache Airflow for orchestration, DBT for data transformation, and Snowflake as the data warehouse. The pipeline is designed to automate the extraction, transformation, and loading of data, enabling efficient analytics and reporting.

## Technologies Used
- **Apache Airflow**: An open-source platform to programmatically author, schedule, and monitor workflows.
- **DBT (Data Build Tool)**: A command-line tool that enables data analysts and engineers to transform data in the warehouse more effectively.
- **Snowflake**: A cloud-based data warehousing platform that provides high-performance storage and analytical capabilities.

## Features
- Automated ETL workflows using Apache Airflow
- DBT models for data transformation
- Integration with Snowflake for data storage
- Modular design for easy scalability and maintainability

## Getting Started

### Prerequisites
- Python 3.x
- Apache Airflow
- DBT
- Snowflake account
- Required Python packages (listed in `requirements.txt`)

### Installation
1. Clone the repository:
   ```
   git clone https://github.com/yourusername/airflow-dbt-snowflake.git
   cd airflow-dbt-snowflake
Create a virtual environment and activate it:


python -m venv venv
source venv/bin/activate  # On Windows use `venv\Scripts\activate`
Install the required packages:


pip install -r requirements.txt
Configuration
Set up your Snowflake credentials in the connections section of the Airflow UI.
Configure DBT profiles in the profiles.yml file according to your Snowflake setup.
Running the Pipeline
Start the Airflow web server:


airflow webserver --port 8080
Start the Airflow scheduler in a new terminal:


airflow scheduler
Access the Airflow UI at http://localhost:8080 to trigger the DAGs and monitor the workflow.
