DROP DATABASE CarDealerShip;

CREATE DATABASE CarDealerShip;

USE CarDealerShip;

CREATE TABLE DealerShips (
    DealerShip_ID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Address VARCHAR(50),
    Phone VARCHAR(12)
);

CREATE TABLE vehicles (
    VIN VARCHAR(17) PRIMARY KEY,
    Make VARCHAR(50),
    Model VARCHAR(50),
    Year INT,
    Color VARCHAR(20),
    Mileage INT,
    Price DECIMAL(10, 2),
    SOLD BOOLEAN
);
CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (dealership_id) REFERENCES DealerShips(DealerShip_ID),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
    );
    CREATE TABLE sales_contracts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    ContractDate DATE,
    CostumerName VARCHAR(100),
    CostumerAddress VARCHAR(17),
    SaleAmount DECIMAL(10, 2),
    DealerShipsName VARCHAR(50),
    FOREIGN KEY (VIN) REFERENCES vehicles(VIN)
);
INSERT INTO DealerShips (Name, Address, Phone)
VALUES
    ('MJ Shop', '123 Main St', '929-408-5789'),
    ('Family Autos', '170 Jerom ave ave', '646-666-3666'),
    ('Car Sales', '789 Pine St', '555-987-2325');
    INSERT INTO vehicles (VIN, Make, Model, Year, Color, Mileage, Price, SOLD)
VALUES
    ('1HGCM82633A000001', 'Honda', 'Accord', 2010, 'Blue', 80000, 12000.00, 0),
    ('5XYZU3LBXCG000002', 'Hyundai', 'Santa Fe', 2012, 'Silver', 60000, 15000.00, 1),
    ('JM1BL1SF4A1100003', 'Mazda', 'Mazda3', 2015, 'Red', 45000, 13000.00, 0),
    ('WAUZZZ8K9BA000004', 'Audi', 'A4', 2011, 'Black', 70000, 18000.00, 1),
    ('1G1YZ2DE0B5800005', 'Chevrolet', 'Corvette', 2014, 'Yellow', 30000, 35000.00, 0);
    INSERT INTO inventory (dealership_id, VIN)
VALUES
    (1, '1HGCM82633A000001'),
    (2, '5XYZU3LBXCG000002'),
    (1, 'JM1BL1SF4A1100003'),
    (3, 'WAUZZZ8K9BA000004'),
    (2, '1G1YZ2DE0B5800005');
INSERT INTO sales_contracts (VIN, ContractDate, CostumerName, CostumerAddress, SaleAmount, DealerShipsName)
VALUES
    ('1HGCM82633A000001', '2023-01-15', 'Amjad Naji', '123 Oak St', 12000.00,'MJ Shop'),
    ('5XYZU3LBXCG000002', '2023-02-20', 'Sasha W', '456 Elm St', 13000.00, 'Family Autos'),
    ('JM1BL1SF4A1100003', '2023-03-10', 'Raymond M', '789 Pine St', 15000.00, 'Car Sales'),
    ('WAUZZZ8K9BA000004', '2023-04-05', 'Jahiem Marte', '101 Maple St', 18000.00, 'Car Sales'),
    ('1G1YZ2DE0B5800005', '2023-05-20', 'Mohamed Ali', '222 Cedar St', 35000.00, 'Car Sales');

