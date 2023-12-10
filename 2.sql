use CarDealerShip;
SELECT * FROM vehicles
JOIN inventory ON vehicles.vin = inventory.vin
WHERE dealership_id = 3;
