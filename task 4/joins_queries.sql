/* Task 4: SQL Intermediate - Joins */


    -- Query 1: INNER JOIN to combine Invoices with Customer details
    SELECT 
        c.CustomerId,
        c.FirstName,
        c.LastName,
        c.Country,
        i.InvoiceId,
        i.InvoiceDate,
        i.Total
    FROM Customer c
    INNER JOIN Invoice i ON c.CustomerId = i.CustomerId;
    


    -- Query 2: LEFT JOIN to find customers with NO orders
    SELECT 
        c.CustomerId,
        c.FirstName,
        c.LastName,
        c.Email
    FROM Customer c
    LEFT JOIN Invoice i ON c.CustomerId = i.CustomerId
    WHERE i.InvoiceId IS NULL;
    


    -- Query 3: Revenue per Product (Track)
    SELECT 
        t.Name AS TrackName,
        SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
    FROM Track t
    JOIN InvoiceLine il ON t.TrackId = il.TrackId
    GROUP BY t.TrackId
    ORDER BY TotalRevenue DESC;
    


    -- Query 4: Revenue per Category (Genre)
    SELECT 
        g.Name AS GenreName,
        SUM(il.UnitPrice * il.Quantity) AS TotalRevenue
    FROM Genre g
    JOIN Track t ON g.GenreId = t.GenreId
    JOIN InvoiceLine il ON t.TrackId = il.TrackId
    GROUP BY g.GenreId
    ORDER BY TotalRevenue DESC;
    
