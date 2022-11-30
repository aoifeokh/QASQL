SELECT 'Vendor' AS ContactType, v.VendorName, v.PhoneNumber
FROM dbo.Vendor AS v
UNION 
SELECT 'Trainer' AS ContactType, t.TrainerName, t.PhoneNumber
FROM dbo.Trainer AS t