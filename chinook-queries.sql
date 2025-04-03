SELECT *
FROM Customer;

-- -- Les clients non americains
SELECT FirstName, LastName, CustomerId, Country
FROM Customer
WHERE Country <> "USA"; 

-- Les client Brésiliens
SELECT*
FROM Customer
WHERE Country= "Brazil";

-- Factures des clients brésiliens
SELECT c.FirstName, c.LastName, i.InvoiceId, i.BillingCountry
FROM Customer as c, Invoice as i
WHERE Country = "Brazil" and c.CustomerId= i.CustomerId;

SELECT *
FROM Employee;

-- Agents de ventes
SELECT *
FROM Employee
WHERE Title= "Sales Support Agent"; 

-- Liste des pays uniques  de Facturation
SELECT distinct BillingCountry
FROM Invoice
WHERE BillingCountry is not null; 

-- Factures par agent de vente
SELECT e.LastName, e.FirstName, i.InvoiceId, i.CustomerId, i.InvoiceDate, i.BillingAddress, i.BillingCountry, i.BillingPostalCode, i.Total
FROM Customer AS c
JOIN Invoice AS i ON c.CustomerId = i.CustomerId
JOIN Employee AS e ON e.EmployeeId = c.SupportRepId
ORDER BY e.EmployeeId; 

-- Détails des factures
SELECT c.LastName, c.FirstName, i.Total, c.Country, e.LastName, e.FirstName
FROM Employee AS e
	JOIN Customer as c on e.EmployeeId = c.SupportRepId
	JOIN Invoice as i on c.CustomerId = i.CustomerId; 
-- Ventes par année
SELECT 
    YEAR(i.InvoiceDate) AS Annee,
    COUNT(i.InvoiceId) AS NombreFactures,
    SUM(i.Total) AS MontantTotalVentes
FROM 
    Invoice AS i
WHERE 
    i.InvoiceDate BETWEEN '2009-01-01' AND '2009-12-31'
    OR i.InvoiceDate BETWEEN '2011-01-01' AND '2011-12-31'
GROUP BY 
    YEAR(i.InvoiceDate)
ORDER BY 
    Annee; 
    
SELECT *
FROM InvoiceLine;
-- Articles pour une facture donnée
SELECT InvoiceId,COUNT(InvoiceLineId)
FROM InvoiceLine
WHERE InvoiceId = 37; 

-- Articles par facture
SELECT InvoiceId,COUNT(InvoiceLineId)
FROM InvoiceLine
GROUP BY InvoiceId; 

-- Nom des morceaux
SELECT i.*, t.Name
FROM InvoiceLine AS i
JOIN Track AS t ON i.TrackId = t.TrackId; 

-- Morceaux et artistes 
SELECT t.Name, i.*, ar.Name
FROM InvoiceLine AS i
 JOIN Track AS t ON i.TrackId = t.TrackId
 JOIN Album as al on al.AlbumId = t.Albumid
 JOIN Artist as ar on ar.ArtistId = al.ArtistId; 

-- Nombre de factures par pays 
SELECT BillingCountry, COUNT(InvoiceId)
FROM Invoice
GROUP BY BillingCountry; 

-- Nombre de morceaux par playlist
SELECT p.*,COUNT(t.TrackId)
FROM Track as t
 JOIN PlaylistTrack as pt ON pt.TrackId= t.TrackId
 JOIN Playlist as p ON p.PlaylistId= pt.PlaylistId
GROUP BY p.PlaylistId; 


SELECT 
    al.Title AS AlbumTitle,
    mt.Name AS MediaType,
    g.Name AS Genre,
    t.Name AS TrackName
FROM 
    Track AS t
JOIN 
    Album AS al ON al.AlbumId = t.AlbumId
JOIN 
    MediaType AS mt ON mt.MediaTypeId = t.MediaTypeId
JOIN 
    Genre AS g ON g.GenreId = t.GenreId;
 
 -- Factures et articles
SELECT Invoice.*, COUNT(InvoiceLine.InvoiceLineId)
FROM Invoice
JOIN InvoiceLine ON InvoiceLine.InvoiceId = Invoice.InvoiceId
GROUP BY Invoice.InvoiceId; 

-- Vente Total par agent
SELECT sum(i.InvoiceId), e.*
FROM Employee as e
 JOIN Customer as c  ON e.EmployeeId= c.SupportRepId
 JOIN Invoice as i ON i.CustomerId= c.CustomerId
GROUP BY e.EmployeeId; 

 --  Meilleur agent de 2009
SELECT e.*, SUM(i.Total) AS 'Total'
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
WHERE YEAR(i.InvoiceDate) = 2009
GROUP BY e.EmployeeId
ORDER BY Total DESC
LIMIT 1;

--  Meilleur agent de 2010
SELECT e.*, SUM(i.Total) AS 'Total'
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
WHERE YEAR(i.InvoiceDate) = 2010
GROUP BY e.EmployeeId
ORDER BY Total DESC
LIMIT 1; 

--  Meilleur agent Global
SELECT e.*, SUM(i.Total) AS 'Total'
FROM Employee AS e
JOIN Customer AS c ON e.EmployeeId = c.SupportRepId
JOIN Invoice AS i ON i.CustomerId = c.CustomerId
GROUP BY e.EmployeeId
ORDER BY Total DESC
LIMIT 1; 


-- Analyse des clients et des pays -- Clients par agent de vente
SELECT COUNT( c.CustomerId), e.*
FROM Employee as e
JOIN Customer as c ON e.EmployeeId= c.SupportRepId
GROUP BY e.EmployeeId; 

--  Ventes totales par pays

SELECT SUM(i.Total), c.Country
FROM Customer as c
JOIN Invoice as i ON i.CustomerId= c.CustomerId
Group By  c.Country
ORDER BY SUM(i.Total) DESC;

-- Morceau le plus acheté en 2013
SELECT t.Name AS morceau, COUNT(i.InvoicelineId) AS nombre_achats
FROM Invoiceline as i
  JOIN Track as t ON i.TrackId= t.TrackId
  JOIN Invoice as ie ON ie.InvoiceId= i.InvoiceId
WHERE YEAR(ie.InvoiceDate)= 2013
Group BY t.TrackId
ORDER BY nombre_achats DESC
LIMIT 1;

-- Top 5 des morceaux les plus achetés

SELECT t.Name AS morceau, COUNT(i.InvoicelineId) AS nombre_achats
FROM Invoiceline as i
  JOIN Track as t ON i.TrackId= t.TrackId
  JOIN Invoice as ie ON ie.InvoiceId= i.InvoiceId
Group BY t.TrackId
ORDER BY nombre_achats DESC
LIMIT 5;

-- Top 3 des artistes les plus vendus
SELECT ar.Name AS Artist, COUNT(i.InvoicelineId) AS nombre_achats
FROM Invoiceline AS i
JOIN Track AS t ON i.TrackId = t.TrackId
JOIN Invoice AS ie ON ie.InvoiceId = i.InvoiceId
JOIN Album AS al ON t.AlbumId = al.AlbumId
JOIN Artist AS ar ON al.ArtistId = ar.ArtistId
GROUP BY ar.ArtistId, ar.Name
ORDER BY nombre_achats DESC
LIMIT 3;

-- Type de média le plus acheté
SELECT mt.Name, COUNT(i.InvoiceLineId) as nombre_achats
FROM InvoiceLine as i
JOIN Track as t ON t.TrackId= i.TrackId
JOIN MediaType as mt ON mt.MediaTypeId= t.MediaTypeId
GROUP BY mt.Name
ORDER BY nombre_achats DESC
Limit 1;





















    











 


    








