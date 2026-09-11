# Project Guide

## Snowflake Environment

- **Database**: `DEMO_DB`
- **Schema**: `TPCH_TRANSFORMED`
- **Warehouse**: `DEMO_WH`

## dbt

### Build Commands

Build all models:

```bash
dbt build --project-dir dbt/
```

Build a single model:

```bash
dbt build --select <model_name> --project-dir dbt/
```

### Conventions

- Model files use **snake_case** naming (e.g., `order_summary.sql`, `customer_lifetime_value.sql`)
- Source data lives in `SNOWFLAKE_SAMPLE_DATA.TPCH_SF1` — all raw tables must be referenced through `_sources.yml`, never hardcoded

## Git Workflow

- Feature branches follow the pattern: `feature/<description>`
- PRs are required before merging to `main`

## Tooling

- This project uses **CoCo Desktop** — do not use the `cortex` CLI command
