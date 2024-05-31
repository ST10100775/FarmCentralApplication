-- Create the Employee table
CREATE TABLE Employee (
    ADMIN_ID NVARCHAR(100) NOT NULL,
    PASSWORD NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Employee PRIMARY KEY (ADMIN_ID)
);

-- Create the Farmer table
CREATE TABLE Farmer (
    FARMER_ID NVARCHAR(100) NOT NULL,
    FARMER_NAME NVARCHAR(100),
    PASSWORD NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Farmer PRIMARY KEY (FARMER_ID)
);

-- Create the Product table
CREATE TABLE Product (
    PRODUCT_ID INT IDENTITY(1,1) NOT NULL,
    FARMER_ID NVARCHAR(100) NOT NULL,
    PRODUCT_DATE DATE,
    PRODUCT_NAME NVARCHAR(100) NOT NULL,
    PRODUCT_PRICE DECIMAL(18, 2),
    PRODUCT_QUANTITY INT,
    PRODUCT_TYPE NVARCHAR(100) NOT NULL,
    CONSTRAINT PK_Product PRIMARY KEY (PRODUCT_ID),
    CONSTRAINT FK_Product_Farmer FOREIGN KEY (FARMER_ID)
        REFERENCES Farmer (FARMER_ID)
        ON DELETE CASCADE
);

-- Insert Employees
INSERT INTO Employee (ADMIN_ID, PASSWORD) VALUES
('admin1', 'password123'),
('admin2', 'securepass456'),
('admin3', 'mypassword789');

-- Insert Farmers
INSERT INTO Farmer (FARMER_ID, FARMER_NAME, PASSWORD) VALUES
('farmer1', 'John Doe', 'johnspassword'),
('farmer2', 'Jane Smith', 'janespassword'),
('farmer3', 'Emily Johnson', 'emilyssecurepass');

-- Insert Products
INSERT INTO Product (FARMER_ID, PRODUCT_DATE, PRODUCT_NAME, PRODUCT_PRICE, PRODUCT_QUANTITY, PRODUCT_TYPE) VALUES
('farmer1', '2023-05-01', 'Apples', 1.50, 100, 'Fruit'),
('farmer2', '2023-05-02', 'Carrots', 0.75, 200, 'Vegetable'),
('farmer3', '2023-05-03', 'Milk', 1.25, 50, 'Dairy'),
('farmer1', '2023-05-04', 'Oranges', 1.75, 120, 'Fruit'),
('farmer2', '2023-05-05', 'Potatoes', 0.50, 300, 'Vegetable'),
('farmer3', '2023-05-06', 'Cheese', 3.00, 30, 'Dairy'),
('farmer1', '2023-05-07', 'Bananas', 1.20, 150, 'Fruit'),
('farmer2', '2023-05-08', 'Tomatoes', 0.90, 180, 'Vegetable'),
('farmer3', '2023-05-09', 'Yogurt', 1.10, 60, 'Dairy'),
('farmer1', '2023-05-10', 'Strawberries', 2.00, 80, 'Fruit'),
('farmer2', '2023-05-11', 'Cabbage', 0.65, 250, 'Vegetable'),
('farmer3', '2023-05-12', 'Butter', 2.50, 40, 'Dairy'),
('farmer1', '2023-05-13', 'Blueberries', 2.50, 90, 'Fruit'),
('farmer2', '2023-05-14', 'Lettuce', 1.00, 150, 'Vegetable'),
('farmer3', '2023-05-15', 'Cream', 1.80, 70, 'Dairy'),
('farmer1', '2023-05-16', 'Pineapples', 2.75, 50, 'Fruit'),
('farmer2', '2023-05-17', 'Onions', 0.55, 220, 'Vegetable'),
('farmer3', '2023-05-18', 'Eggs', 0.20, 300, 'Dairy');