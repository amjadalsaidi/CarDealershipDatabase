use CarDealerShip;
SELECT dealerships.*
FROM dealerships
JOIN inventory ON dealerships.dealership_ID = inventory.Dealership_ID
WHERE inventory.VIN = '1HGCM82633A000001'