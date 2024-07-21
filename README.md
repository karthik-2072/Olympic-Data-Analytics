# Olympic Data Analytics

## Project Overview

The Olympic Data Analytics project is designed to streamline the process of data ingestion, transformation, and analysis of Olympic datasets. This project leverages various Azure services to handle data efficiently and provides insightful visualizations through Power BI.

## Project Flow

1. **Data Source**
   - The data was sourced from Kaggle and uploaded to GitHub for easy access and version control.

2. **Data Ingestion Pipeline**
   - **Azure Data Factory**: Orchestrated the data ingestion pipeline to fetch data from GitHub and load it into Azure Data Lake Gen2.

3. **Data Storage**
   - **Azure Data Lake Gen2**: Created a storage account with necessary permissions using Access Control (IAM).
     - **Containers**: 
       - `olympic-data`
         - `raw`: For raw data storage
         - `transformed`: For storing transformed data

4. **Secret Management**
   - **Azure Key Vault**: Stored all sensitive information such as secret values, client ID, and tenant ID.

5. **App Registration**
   - **Olympic App**: Registered an app using Azure App Registrations to enable secure interactions with Azure resources.

6. **Data Transformation**
   - **Azure Databricks**: 
     - Created a Databricks workspace.
     - Created a secret scope and used a service principal for connecting to the storage account.
     - Mounted the storage account and performed necessary data transformations.
     - Saved the transformed data in the `transformed` folder in the `olympic-data` container in Azure Data Lake Gen2.

7. **Data Analysis**
   - **Azure Synapse Analytics**: 
     - Created tables and performed SQL operations and analysis on the transformed data.

8. **Data Visualization**
   - **Power BI**: 
     - Built interactive dashboards to visualize the insights derived from the data analysis.


