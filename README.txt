PROJECT TITLE:
Dental Clinic Database

INTRODUCTION: 
This project was created as a solution to the narrative provided separately (SEE Project Specifications Narrative). I have detailed my approach to the issues included. Separately, there is also a relation schema outlining the relationships between the entities in the database. Alongside the explanation below, SQL queries are referenced but included in a QUERIES file in this repository to facilitate reading experience. 

ADDRESSING THE SITUATION:
A database system will help Helen to more efficiently manage records for the dental practice and avoid any inconsistencies, which may arise under the previous file-based system. 

Request for an appointment:
For new appointments, Helen should first check if a new client or not.
If the person is a current patient, she must check the BlockedCheck view (any patients who haven’t paid up a bill which was issued over 6 months ago or any bill that is over 1,000). She can also consult the BlockCheckBreakdown view to explain what was billed, what is paid to date, and how much is outstanding.

Creating a new Patient:
The she can check the calendar for the requested time. If the client is new, she must add the patient to the system. She will ask for their address first, and input it into the Eircode table.  Eircode is required as, in case of late cancellation, for example, the person will need at least one main form address to be billed at.

Setting an appointment:
For arranging appointments, she checks her calendar for openings and confirms a time with a patient (selecting ‘Booked’) she cites the Patient_ID and inputs the reason (APPS.AppReason) for the appointment and assigns a practitioner (in as Dr. Mulcahy by default). 

On appointment day:
On the appointment day, Dr. Mulcahey will add instances of procedures done (PROCEDURES.Procedure_ID) for billing.  Dr. Mulcahey can write a summary of the session in the APPS.PractitionerNotes table. Any particular details per treatment carried out (e.g. individual fillings across different teeth) are broken down in further detail in the individual PROCEDURE.ProcedureNotes.

Billing:
Afterwards, Helen can view the bill (i.e. the sum of individual Procedures) in the OutstandingPayments view.  She can generate a once off payment or discuss with the patient and list intention for making instalments in BILLS.InstalmentNotes.
QUERY
 Referrals:
If the appointment is a referral to another dental practitioner outside of the clinic, Helen will create an appointment for this (changing the default APPS.Practitioner_ID to the relevant specialist). She can omit scheduling data (as the patient will organize this time independently) and input referral details. They may be filled on receipt of correspondence from the specialist afterwards. 
Details of past appointment can be displayed by Dr. Mulcahey for reference in future appointments. QUERY.  
Cancellations
If a cancellation occurs, she will change the status (APPS.AppStatus) to ‘Cancelled’.  No bill is generated in this case. For late cancellations, at her discretion, she can generate a new bill and add a new procedure instance (‘Late Cancellation’). Any notes regarding scheduling, as in the case of a cancellation, may be captured (APPS.SchedulingNotes). Helen may refer to the ‘Awaiting Opening’ list after a cancellation has been made to see if the space can be filled. QUERY.

Sending Reminders: Helen can use the OutstandingPaymentsSummary view for her weekly send out bills to be paid. Further breakdown for each, if detail of breakdown needed it can be seen in the OutstandingPayments view or with QUERY. 
Similarly, in the afternoon, she may refer to the NextWeeksApps view to send out reminders to clients with upcoming appointments. QUERY
