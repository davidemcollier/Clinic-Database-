-- QUERIES NUMBERED AND ALIGNED TO PROJECT REPORT DOC
-- VIEWS CREATED IN MAIN SQL SCRIPT
-- I have not exemplified all examples, to avoid repitive query forms. The selection below is illustrative.

-- Query 1

--General search of all blocked patients
Select * from blockcheck
--Ian Casey is over the 1000 limit and unpaid
Select * from blockcheck where patient_id=6
--Evelyn Brand is has not paid her will which was given a general due date of 6months.
Select * from blockcheck where patient_id=7
--Example search for a patient not blocked
Select * from blockcheck where patient_id=1
--Further detail of treatments which are owed for in blockcheckbreakdown
Select * from blockcheckbreakdown


-- Query 2

--Insert Eircode first (if not already existent, e.g. if a cohabitant already is a patient). Example:
insert into Address (Eircode, AddressLine) Values ('XYZ9876', '1234 codd rd, cork city, cork')
--Insert Patient. Example
insert into PATIENTS (FName, LName, Mobile, Landline, Eircode, Birthdate) Values ('John', 'Donnelly', '0851982753', '098765431', 'XYZ9876', '1959-07-04')

-- Query 3

-- Helen can search with relevant patient_ID
Select * from OutstandingPaymentSummary Where Patient_ID=3
-- OR by name, if needed, as in example search for Mary Fleming.
Select * from OutstandingPaymentSummary Where FName='mary' and LName='fleming'

-- Query 5

--Seeking an opening after a cancellation
select * from apps WHERE APPS.App_ID='Seeking Opening'
--Example of patient open to a booking and a provisional booking already input
select * from APPS where Patient_ID=14

-- Query 6
-- Example of Late Cancellation registered
SELECT * FROM `outstandingpayments` where Patient_ID=8

-- Query 7
-- NB (I've added Alison Jacobs per week for the next two months from in case this field is empty after submission)
select * from nextweeksapps




