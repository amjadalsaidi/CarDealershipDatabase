USE CarDealerShip;

SELECT *
FROM sales_contracts
WHERE 
DealerShipsName = 'Car Sales' and
sales_contracts.ContractDate between '2023-02-20' and '2023-05-20'