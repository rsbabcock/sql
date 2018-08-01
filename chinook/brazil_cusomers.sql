-- Provide a query only showing the Customers from Brazil.

SELECT c.FirstName, c.LastName, c.CustomerId, c.Country
from Customer c
where c.Country = "Brazil"