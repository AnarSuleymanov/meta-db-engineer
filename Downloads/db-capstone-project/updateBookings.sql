DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$ 
CREATE PROCEDURE UpdateBooking(IN BookingID INT, IN BookingDate DATE) 
BEGIN
UPDATE bookings SET date = BookingDate WHERE bookingid = BookingID; 
SELECT CONCAT("Booking ", BookingID, " updated") AS "Confirmation"; 
END$$ 
DELIMITER ; 
CALL UpdateBooking(10, "2022-11-08");

