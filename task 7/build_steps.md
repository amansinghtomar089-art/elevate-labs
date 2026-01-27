# Build Steps (Power BI)

1. Import dataset (CSV) into Power BI Desktop.
2. Verify data types (Sales/Profit = Decimal, Date = Date).
3. Create measures from `measures.dax`.
4. Add visuals:
   - Column: Sales by Category
   - Bar: Sales by Region
   - Line: Profit over Time
5. Add KPI cards for Total Sales, Total Profit, Top Category.
6. Add slicers for Region, Segment, Year.
7. Align visuals and apply a clean theme.
8. Save as `Dashboard.pbix` and export `Dashboard.pdf`.