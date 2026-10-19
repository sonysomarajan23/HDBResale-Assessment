# Automated Testing

## Framework

BDDFramework for OutSystems 11.

## Test Module

`HDBResale_ServerTests`

## Test Scenarios

The test module contains three BDD scenarios:

1. **GetHDBResaleRecords_Success** — Validates successful retrieval of HDB resale records and checks that the returned record count respects the requested limit.
2. **GetMonthlyTransactionSummary_Success** — Validates that the monthly transaction summary action returns successful, non-empty results.
3. **GetTownTransactionSummary_Success** — Validates that the town transaction summary action returns successful, non-empty results.

## Execution

The BDD scenarios are implemented in the OutSystems `HDBResale_ServerTests` module using BDDFramework.

The three scenarios passed during the previous test execution. Rerun them before final submission to verify the latest results.

## Test Artifacts

The OutSystems application package is available under `outsystems/application-export/`. The automated test module is included in the `HDBResale_ServerTests.oap` package.
