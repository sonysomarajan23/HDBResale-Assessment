# HDB Resale Assessment

An OutSystems 11 application for exploring Singapore HDB resale flat prices using data from [data.gov.sg](https://data.gov.sg/).

The project demonstrates data integration, dashboard visualizations, searchable transaction records, modular application architecture, automated testing, and AWS Infrastructure as Code (IaC) using Terraform.

## Project Overview

The HDB Resale Portal enables users to explore HDB resale transaction data through a dashboard and searchable records interface.

### Key Features

- **Dashboard:** Summary indicators and transaction visualizations.
- **Transaction exploration:** Search and filter HDB resale records.
- **Data integration:** Integration with Singapore's data.gov.sg dataset.
- **Modular architecture:** Separate modules for portal UI, business logic, core services, shared components, and API integration.
- **Automated testing:** BDD-based test scenarios implemented using BDDFramework.
- **Infrastructure as Code:** Terraform configuration describing foundational AWS networking resources.

## Technology Stack

- OutSystems 11
- OutSystems UI
- OutSystems Charts
- REST API integration
- Singapore HDB Resale Flat Prices dataset
- BDDFramework
- Terraform
- AWS provider

## Application Architecture

The solution is organized into the following OutSystems applications and modules:

| Application / Module | Responsibility |
|---|---|
| `HDBResale_Portal` | User-facing portal and dashboard |
| `HDBResale_CoreService` | Core services and business logic |
| `HDBResale_BL` | Business logic |
| `HDBResale_CS` | Core service functionality |
| `HDBResale_Common` | Shared structures and common functionality |
| `HDBResale_API` | External data integration |
| `HDBResale_CoreWidget` | Reusable UI components |
| `HDBResale_ThemesandPatterns` | Shared theme and UI patterns |
| `HDBResale_ServerTests` | Automated server-side test scenarios |

## Data Source

**Dataset:** HDB Resale Flat Prices

**Provider:** Singapore Government, data.gov.sg

**Dataset resource ID:** `d_8b84c4ee58e3cfc0ece0d773c8ca6abc`

The dataset includes transaction attributes such as month, town, flat type, block, street name, storey range, floor area, flat model, lease information, and resale price.

## Repository Structure

```text
HDBResale-Assessment/
├── README.md
├── .gitignore
├── infrastructure/
│   ├── versions.tf
│   ├── providers.tf
│   ├── variables.tf
│   ├── main.tf
│   ├── outputs.tf
│   └── README.md
├── outsystems/
│   ├── README.md
│   └── application-export/
│       ├── HDBResale_API.oap
│       ├── HDBResale_Portal.oap
│       ├── HDBResale_ServerTests.oap
│       ├── HDBResale_CoreService.oap
│       ├── HDBResale_CoreWidget.oap
│       └── HDBResale_ThemesandPatterns.oap
└── tests/
    └── README.md
```

## Running the Automated Tests

The server-side test scenarios are implemented using OutSystems BDDFramework.

The documented scenarios cover:

- Retrieving HDB resale records successfully.
- Retrieving monthly transaction summaries.
- Retrieving transaction summaries by town.

Import or access the application and test modules in a compatible OutSystems 11 environment, then execute the test scenarios using the available test setup.

Refer to [`tests/README.md`](tests/README.md) for test details.

## Infrastructure as Code

The `infrastructure/` directory contains Terraform configuration for foundational AWS networking resources, including a VPC, public subnet, Internet Gateway, and route table.

To format, initialize, and validate the configuration from the repository root:

```bash
terraform -chdir=infrastructure fmt -check
terraform -chdir=infrastructure init -backend=false
terraform -chdir=infrastructure validate
```

**Infrastructure limitation:** The current Terraform configuration is a reference network design. It does not provision a complete, production-ready OutSystems hosting environment. Refer to [`infrastructure/README.md`](infrastructure/README.md) for assumptions and limitations.

## OutSystems Environment and Exports

The `outsystems/` directory contains application documentation and exported OAP files.

Refer to [`outs​​ystems/README.md`](outsystems/README.md) for environment access information, application details, and export contents.

**Published application:**  
https://personal-fir4uooq.outsystemscloud.com/HDBResale_Portal/

The HDB Resale Portal is published in the above OutSystems 11 Personal Environment.

The application login credentials have been shared separately via email.

## Design Considerations

The solution separates the user interface, business logic, data integration, reusable components, and automated tests to improve maintainability and separation of concerns.

The infrastructure configuration is maintained separately from the OutSystems application exports to support independent review of the application and infrastructure design.

## Notes

- This repository contains the assessment artifacts and infrastructure reference configuration.
- AWS deployment is not required to run the Terraform formatting and validation checks.
- Review environment access, test execution, and infrastructure assumptions before submitting the assessment.
