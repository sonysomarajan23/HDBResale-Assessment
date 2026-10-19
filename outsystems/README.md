# OutSystems Application

## Project

HDB Resale Portal

## Platform

OutSystems 11 Personal Environment

## Application Overview

HDB Resale Portal is a web application for exploring Singapore HDB resale flat price data from data.gov.sg.

The application provides a user-facing interface for viewing transaction summaries, visualizations, and resale records, with search and filtering capabilities.

## Application Architecture

The solution is organized into separate OutSystems applications to support modularity, separation of responsibilities, and maintainability.

### 1. HDBResale_Portal

**Purpose:** User-facing application.

Provides the interface for exploring HDB resale data, including dashboard visualizations, search, filtering, and transaction records.

### 2. HDBResale_CoreService

Contains the following modules:

- **HDBResale_BL** — Business rules, search and filtering logic, input validation, data aggregation, and orchestration of application operations.
- **HDBResale_CS** — Core data services, data retrieval, API response mapping, and database operations.
- **HDBResale_Common** — Shared structures and enumerations used across modules.

### 3. HDBResale_API

Manages external REST API integration with data.gov.sg, including endpoint configuration, API methods, and response handling for HDB resale data.

### 4. HDBResale_CoreWidget

Contains the HDBResale_CW module, which provides reusable UI components and Web Blocks shared across the application.

### 5. HDBResale_ThemesandPatterns

Contains the application's theme, CSS, and reusable UI patterns to promote consistent styling.

### 6. HDBResale_ServerTests

Contains automated BDD tests for validating HDB Resale application functionality and reliability. The test module uses BDDFramework.

## External Dependencies

The application uses the following OutSystems components, as applicable:

- OutSystems UI — UI components and patterns
- OutSystems Charts — Data visualizations
- OutSystems Maps — Map-related UI capabilities
- BDDFramework — Automated BDD testing

## Data Source

**Source:** Singapore Government open data portal, data.gov.sg

**Dataset:** HDB Resale Flat Prices

The application integrates resale flat price data and presents transaction information through its user interface.

## Key Capabilities

- Dashboard and transaction summaries
- Data visualizations
- Search and filtering of resale records
- Transaction record exploration
- Reusable UI components and shared styling
- Automated BDD test scenarios

## Environment Access

**Platform:** OutSystems 11 Personal Environment

The published application pages are intended to be accessible through the application URL provided with the assessment submission.

**Application URL:** https://personal-fir4uooq.outsystemscloud.com/HDBResale_Portal/

The published HDBResale_Portal application can be accessed through the URL above, subject to the environment's access settings.

The application login credentials have been shared separately via email.
## Automated Testing

The HDBResale_ServerTests module contains BDD scenarios for validating:

1. Retrieval of HDB resale records
2. Monthly transaction summaries
3. Transaction summaries by town

The three scenarios have passed in the test environment.

## Application Exports

Importable OutSystems module export files may be placed in the `application-export/` directory if required for submission or backup purposes.

## Notes

- The OutSystems application is hosted in an OutSystems 11 Personal Environment.
- AWS Infrastructure as Code is maintained separately under the repository's `infrastructure/` directory.
- No AWS deployment is implied by the presence of Terraform configuration files.
