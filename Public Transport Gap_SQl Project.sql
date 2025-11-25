## Create Database ##
CREATE DATABASE PublicTransportDB;
USE PublicTransportDB;

## Stations Table ##
CREATE TABLE Stations (
    station_id INT PRIMARY KEY AUTO_INCREMENT,
    station_name VARCHAR(100) NOT NULL,
    location VARCHAR(100),
    capacity INT
);

-- Routes Table
CREATE TABLE Routes (
    route_id INT PRIMARY KEY AUTO_INCREMENT,
    route_name VARCHAR(100) NOT NULL,
    start_station INT,
    end_station INT,
    total_distance DECIMAL(5,2),
    FOREIGN KEY (start_station) REFERENCES Stations(station_id),
    FOREIGN KEY (end_station) REFERENCES Stations(station_id)
);

-- Buses Table
CREATE TABLE Buses (
    bus_id INT PRIMARY KEY AUTO_INCREMENT,
    bus_number VARCHAR(50) UNIQUE,
    capacity INT,
    route_id INT,
    FOREIGN KEY (route_id) REFERENCES Routes(route_id)
);

-- Passengers Table
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY AUTO_INCREMENT,
    passenger_name VARCHAR(100),
    age INT,
    gender VARCHAR(10)
);

-- Trips Table
CREATE TABLE Trips (
    trip_id INT PRIMARY KEY AUTO_INCREMENT,
    bus_id INT,
    route_id INT,
    trip_date DATE,
    passengers_count INT,
    delay_minutes INT,
    FOREIGN KEY (bus_id) REFERENCES Buses(bus_id),
    FOREIGN KEY (route_id) REFERENCES Routes(route_id)
);

-- Insert Stations
INSERT INTO Stations (station_name, location, capacity) VALUES
('Station 1', 'Mumbai', 500),
('Station 2', 'Pune', 300),
('Station 3', 'Delhi', 600),
('Station 4', 'Bangalore', 450),
('Station 5', 'Hyderabad', 400),
('Station 6', 'Chennai', 350),
('Station 7', 'Kolkata', 550),
('Station 8', 'Jaipur', 320),
('Station 9', 'Lucknow', 280),
('Station 10', 'Nagpur', 360),
('Station 11', 'Indore', 330),
('Station 12', 'Bhopal', 310),
('Station 13', 'Ahmedabad', 520),
('Station 14', 'Surat', 340),
('Station 15', 'Patna', 410),
('Station 16', 'Kanpur', 305),
('Station 17', 'Varanasi', 295),
('Station 18', 'Rajkot', 310),
('Station 19', 'Vadodara', 325),
('Station 20', 'Thane', 420),
('Station 21', 'Nashik', 280),
('Station 22', 'Aurangabad', 300),
('Station 23', 'Amritsar', 400),
('Station 24', 'Ludhiana', 370),
('Station 25', 'Agra', 390),
('Station 26', 'Meerut', 310),
('Station 27', 'Ranchi', 320),
('Station 28', 'Jamshedpur', 315),
('Station 29', 'Guwahati', 305),
('Station 30', 'Shillong', 295),
('Station 31', 'Chandigarh', 410),
('Station 32', 'Mysore', 330),
('Station 33', 'Coimbatore', 340),
('Station 34', 'Madurai', 300),
('Station 35', 'Trivandrum', 360),
('Station 36', 'Kochi', 340),
('Station 37', 'Goa', 280),
('Station 38', 'Pondicherry', 250),
('Station 39', 'Shimla', 200),
('Station 40', 'Dehradun', 230),
('Station 41', 'Haridwar', 220),
('Station 42', 'Udaipur', 310),
('Station 43', 'Jodhpur', 305),
('Station 44', 'Ajmer', 270),
('Station 45', 'Gwalior', 300),
('Station 46', 'Jabalpur', 315),
('Station 47', 'Raipur', 325),
('Station 48', 'Bhubaneswar', 350),
('Station 49', 'Cuttack', 330),
('Station 50', 'Puri', 280);



-- Insert Routes
INSERT INTO Routes (route_name, start_station, end_station, total_distance) VALUES
('Route 1', 1, 5, 120.50),
('Route 2', 2, 6, 80.20),
('Route 3', 3, 7, 150.75),
('Route 4', 4, 8, 95.30),
('Route 5', 5, 9, 100.00),
('Route 6', 6, 10, 110.40),
('Route 7', 7, 11, 140.60),
('Route 8', 8, 12, 90.10),
('Route 9', 9, 13, 135.50),
('Route 10', 10, 14, 105.25),
('Route 11', 11, 15, 115.80),
('Route 12', 12, 16, 75.90),
('Route 13', 13, 17, 160.00),
('Route 14', 14, 18, 120.40),
('Route 15', 15, 19, 140.75),
('Route 16', 16, 20, 98.30),
('Route 17', 17, 21, 110.20),
('Route 18', 18, 22, 130.50),
('Route 19', 19, 23, 150.00),
('Route 20', 20, 24, 85.40),
('Route 21', 21, 25, 125.30),
('Route 22', 22, 26, 95.20),
('Route 23', 23, 27, 140.00),
('Route 24', 24, 28, 100.50),
('Route 25', 25, 29, 115.30),
('Route 26', 26, 30, 120.70),
('Route 27', 27, 31, 140.25),
('Route 28', 28, 32, 80.50),
('Route 29', 29, 33, 100.60),
('Route 30', 30, 34, 90.10),
('Route 31', 31, 35, 150.80),
('Route 32', 32, 36, 120.00),
('Route 33', 33, 37, 135.50),
('Route 34', 34, 38, 95.30),
('Route 35', 35, 39, 105.40),
('Route 36', 36, 40, 115.20),
('Route 37', 37, 41, 125.60),
('Route 38', 38, 42, 100.00),
('Route 39', 39, 43, 120.75),
('Route 40', 40, 44, 90.30),
('Route 41', 41, 45, 110.40),
('Route 42', 42, 46, 130.50),
('Route 43', 43, 47, 145.00),
('Route 44', 44, 48, 100.25),
('Route 45', 45, 49, 115.40),
('Route 46', 46, 50, 125.00),
('Route 47', 47, 1, 140.60),
('Route 48', 48, 2, 150.30),
('Route 49', 49, 3, 160.10),
('Route 50', 50, 4, 170.00);


-- Insert Buses
INSERT INTO Buses (bus_number, capacity, route_id) VALUES
('MH01-BUS001', 50, 1),
('MH01-BUS002', 45, 2),
('MH01-BUS003', 60, 3),
('MH01-BUS004', 55, 4),
('MH01-BUS005', 40, 5),
('MH01-BUS006', 65, 6),
('MH01-BUS007', 48, 7),
('MH01-BUS008', 52, 8),
('MH01-BUS009', 50, 9),
('MH01-BUS010', 60, 10),
('MH01-BUS011', 55, 11),
('MH01-BUS012', 45, 12),
('MH01-BUS013', 50, 13),
('MH01-BUS014', 48, 14),
('MH01-BUS015', 52, 15),
('MH01-BUS016', 60, 16),
('MH01-BUS017', 55, 17),
('MH01-BUS018', 45, 18),
('MH01-BUS019', 50, 19),
('MH01-BUS020', 60, 20),
('MH01-BUS021', 48, 21),
('MH01-BUS022', 52, 22),
('MH01-BUS023', 55, 23),
('MH01-BUS024', 60, 24),
('MH01-BUS025', 50, 25),
('MH01-BUS026', 45, 26),
('MH01-BUS027', 55, 27),
('MH01-BUS028', 60, 28),
('MH01-BUS029', 48, 29),
('MH01-BUS030', 52, 30),
('MH01-BUS031', 60, 31),
('MH01-BUS032', 55, 32),
('MH01-BUS033', 50, 33),
('MH01-BUS034', 45, 34),
('MH01-BUS035', 60, 35),
('MH01-BUS036', 55, 36),
('MH01-BUS037', 52, 37),
('MH01-BUS038', 50, 38),
('MH01-BUS039', 60, 39),
('MH01-BUS040', 55, 40),
('MH01-BUS041', 48, 41),
('MH01-BUS042', 60, 42),
('MH01-BUS043', 50, 43),
('MH01-BUS044', 55, 44),
('MH01-BUS045', 45, 45),
('MH01-BUS046', 60, 46),
('MH01-BUS047', 52, 47),
('MH01-BUS048', 55, 48),
('MH01-BUS049', 60, 49),
('MH01-BUS050', 50, 50);


-- Insert Passengers
INSERT INTO Passengers (passenger_name, age, gender) VALUES
('Amit Sharma', 29, 'Male'),
('Priya Singh', 24, 'Female'),
('Rahul Mehta', 34, 'Male'),
('Sneha Joshi', 28, 'Female'),
('Arjun Kapoor', 26, 'Male'),
('Neha Verma', 22, 'Female'),
('Ravi Patel', 31, 'Male'),
('Kavya Rao', 25, 'Female'),
('Vikram Nair', 36, 'Male'),
('Anjali Gupta', 30, 'Female'),
('Mohit Yadav', 27, 'Male'),
('Shreya Iyer', 23, 'Female'),
('Rohit Malhotra', 35, 'Male'),
('Simran Kaur', 21, 'Female'),
('Deepak Kumar', 33, 'Male'),
('Pooja Sharma', 29, 'Female'),
('Sandeep Singh', 32, 'Male'),
('Isha Jain', 24, 'Female'),
('Nikhil Agarwal', 28, 'Male'),
('Ritika Das', 26, 'Female'),
('Aakash Mishra', 30, 'Male'),
('Divya Reddy', 27, 'Female'),
('Manoj Joshi', 34, 'Male'),
('Kiran Bhatia', 22, 'Female'),
('Harsh Gupta', 29, 'Male'),
('Swati Choudhary', 25, 'Female'),
('Vivek Saxena', 31, 'Male'),
('Pallavi Sinha', 23, 'Female'),
('Abhishek Tiwari', 33, 'Male'),
('Meera Nair', 27, 'Female'),
('Gaurav Sharma', 28, 'Male'),
('Nandini Menon', 26, 'Female'),
('Kunal Roy', 32, 'Male'),
('Roshni Paul', 24, 'Female'),
('Sameer Desai', 29, 'Male'),
('Tanvi Kulkarni', 25, 'Female'),
('Aditya Chauhan', 30, 'Male'),
('Komal Yadav', 23, 'Female'),
('Saurabh Pandey', 34, 'Male'),
('Payal Kapoor', 27, 'Female'),
('Rajesh Singh', 31, 'Male'),
('Snehal Patil', 22, 'Female'),
('Arvind Joshi', 29, 'Male'),
('Sonali Das', 26, 'Female'),
('Ashish Verma', 33, 'Male'),
('Monika Arora', 28, 'Female'),
('Pradeep Kumar', 35, 'Male'),
('Alka Sharma', 24, 'Female'),
('Varun Kapoor', 40, 'Male');



-- Insert Trips (simulating overcrowding/delays)
INSERT INTO Trips (bus_id, route_id, trip_date, passengers_count, delay_minutes) VALUES
(1, 1, '2025-08-20', 70, 15), -- overcrowded
(2, 2, '2025-08-01', 42, 10),
(3, 3, '2025-08-01', 65, 0),
(4, 4, '2025-08-20', 65, 20), -- overcrowded
(5, 5, '2025-08-02', 38, 0),
(6, 6, '2025-08-02', 64, 12),
(7, 7, '2025-08-02', 49, 8),
(8, 8, '2025-08-02', 52, 5),
(9, 9, '2025-08-02', 47, 20),
(10, 10, '2025-08-02', 58, 0),
(11, 11, '2025-08-03', 50, 10),
(12, 12, '2025-08-03', 44, 6),
(13, 13, '2025-08-03', 52, 15),
(14, 14, '2025-08-03', 48, 0),
(15, 15, '2025-08-03', 50, 5),
(16, 16, '2025-08-03', 60, 18),
(17, 17, '2025-08-03', 54, 7),
(18, 18, '2025-08-03', 45, 0),
(19, 19, '2025-08-04', 49, 9),
(20, 20, '2025-08-04', 60, 12),
(21, 21, '2025-08-04', 47, 0),
(22, 22, '2025-08-04', 51, 6),
(23, 23, '2025-08-04', 55, 20),
(24, 24, '2025-08-04', 59, 5),
(25, 25, '2025-08-04', 48, 7),
(26, 26, '2025-08-05', 43, 0),
(27, 27, '2025-08-05', 52, 8),
(28, 28, '2025-08-05', 58, 12),
(29, 29, '2025-08-05', 49, 6),
(30, 30, '2025-08-05', 45, 0),
(31, 31, '2025-08-05', 60, 15),
(32, 32, '2025-08-05', 55, 10),
(33, 33, '2025-08-05', 51, 0),
(34, 34, '2025-08-05', 47, 8),
(35, 35, '2025-08-06', 59, 12),
(36, 36, '2025-08-06', 53, 5),
(37, 37, '2025-08-06', 45, 0),
(38, 38, '2025-08-06', 60, 20),
(39, 39, '2025-08-06', 56, 7),
(40, 40, '2025-08-06', 50, 9),
(41, 41, '2025-08-06', 47, 0),
(42, 42, '2025-08-07', 58, 6),
(43, 43, '2025-08-07', 52, 8),
(44, 44, '2025-08-07', 49, 10),
(45, 45, '2025-08-07', 44, 0),
(46, 46, '2025-08-07', 60, 15),
(47, 47, '2025-08-07', 55, 12),
(48, 48, '2025-08-07', 50, 5),
(49, 49, '2025-08-07', 48, 7),
(50, 50, '2025-08-21', 80, 25); -- overcrowded + delayed

select * from Stations;
select * from Routes;
select * from Buses;
select * from Passengers;
select * from Trips;

#Question.1] Find all overcrowded trips (passengers > bus capacity)
SELECT t.trip_id, b.bus_number, t.passengers_count, b.capacity, 
       (t.passengers_count - b.capacity) AS excess_passengers
FROM Trips t
JOIN Buses b ON t.bus_id = b.bus_id
WHERE t.passengers_count > b.capacity;

#Explanation:This query shows all trips where the number of passengers is more than the bus capacity. It helps identify overcrowded trips and by how many passengers.


#Question.2] Average delay per route
SELECT r.route_name, AVG(t.delay_minutes) AS avg_delay
FROM Trips t
JOIN Routes r ON t.route_id = r.route_id
GROUP BY r.route_name;

#Explanation:This calculates the average delay (in minutes) for each route. Routes with higher average delays may need better scheduling or more buses.


#Question.3] Routes with highest passenger demand
SELECT r.route_name, max(t.passengers_count) AS max_passengers
FROM Trips t
JOIN Routes r ON t.route_id = r.route_id
GROUP BY r.route_name
ORDER BY max_passengers DESC;

#Explanation:This query ranks routes by their average passenger load. High-demand routes may require more buses or larger vehicles.


#Question.4] Stations that act as hubs (connected to most routes)
SELECT s.station_name, COUNT(r.route_id) AS total_routes
FROM Stations s
JOIN Routes r ON s.station_id = r.start_station or s.station_id = r.end_station
GROUP BY s.station_name
ORDER BY total_routes DESC;

#Explanation:Shows which stations are connected to the most routes. These hubs usually face more traffic and need better infrastructure.


#Question.5] Identify buses that are frequently delayed (>15 min avg)
SELECT b.bus_number, AVG(t.delay_minutes) AS avg_delay
FROM Trips t
JOIN Buses b ON t.bus_id = b.bus_id
GROUP BY b.bus_number
HAVING AVG(t.delay_minutes) > 15;

#Explanation:This highlights buses that are usually late. Such buses might need maintenance or better scheduling.


#Question.6] Daily passenger trend (total passengers per day)
SELECT trip_date, SUM(passengers_count) AS total_passengers
FROM Trips
GROUP BY trip_date
ORDER BY trip_date;

#Explanation:This shows how many passengers traveled each day. It helps in analyzing peak travel days (weekdays vs weekends).

#Question.7] Find the most overcrowded route overall
SELECT r.route_name, SUM(t.passengers_count - b.capacity) AS total_excess_passengers
FROM Trips t
JOIN Buses b ON t.bus_id = b.bus_id
JOIN Routes r ON t.route_id = r.route_id
WHERE t.passengers_count > b.capacity
GROUP BY r.route_name
ORDER BY total_excess_passengers DESC
LIMIT 1;

#Explanation:This finds the single route with the highest total overcrowding. It’s the top candidate for adding more buses.


#Question.8] Maximum delay recorded per route
SELECT r.route_name, MAX(t.delay_minutes) AS max_delay
FROM Trips t
JOIN Routes r ON t.route_id = r.route_id
GROUP BY r.route_name
ORDER BY max_delay DESC;

#Explanation:Shows the worst delay recorded on each route. Useful for finding routes with extreme punctuality issues.


#Question.9] Passengers per route per day (demand distribution)
SELECT r.route_name, t.trip_date, SUM(t.passengers_count) AS total_passengers
FROM Trips t
JOIN Routes r ON t.route_id = r.route_id
GROUP BY r.route_name, t.trip_date
ORDER BY t.trip_date, total_passengers DESC;

#Explanation:This shows how many people use each route daily. Helps in identifying day-wise demand patterns for different routes.

