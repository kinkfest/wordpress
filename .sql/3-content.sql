-- Sample data for testing

# USE portlandleatherorg;

-- --------------------------------------------------------

-- Insert sample data into kfaccessibilitysurvey
INSERT INTO kfaccessibilitysurvey (kfaccessibilitysurveyid, customerid, fullname, preferredname, preferredpronouns, phone, email, otherrequests, status, teamnotes, conciergeservices, priorityseating, rentingmobilitydevice, serviceanimal, sharps, useoftechnology) VALUES
(1, 100, 'John Doe', 'John', 'he/him', '123-456-7890', 'john.doe@example.com', 'None', 'Pending', 'Initial survey', 'N', 'Y', 'N', 'Y', 'N', 'Y'),
(2, 101, 'Jane Smith', 'Jane', 'she/her', '987-654-3210', 'jane.smith@example.com', 'Wheelchair access', 'Completed', 'Survey reviewed', 'Y', 'N', 'Y', 'N', 'Y', 'N');

-- --------------------------------------------------------

-- Insert sample data into kfcommunityevents
INSERT INTO kfcommunityevents (kfcommunityeventid, fullname, preferredname, preferredpronouns, phone, email, communityeventname, communityeventdescription, estimatedattendees, requestedmeetingdate, requestedmeetingtime, comments, status, teamnotes, marketevent) VALUES
(1, 'Alice Johnson', 'Alice', 'they/them', '555-1234', 'alice.johnson@example.com', 'Community Picnic', 'Annual community picnic with games and food', '100', '2024-07-01', '14:00:00', 'Need vegetarian options', 'Scheduled', 'Reviewed by team', 'Y'),
(2, 'Bob Brown', 'Bob', 'he/him', '555-5678', 'bob.brown@example.com', 'Charity Run', '5k charity run for local hospital', '300', '2024-08-15', '09:00:00', 'Route needs to be confirmed', 'Pending', 'Initial review', 'N');

-- --------------------------------------------------------

-- Insert sample data into kfcustomer
-- now happening in a separate file (kfcustomer.sql) due to size and method of generation

-- --------------------------------------------------------

-- Insert sample data into kfdocuments
INSERT INTO kfdocuments (documentid, documentfilename, documentdisplayname, documentcategory, documentsubcategory, documentdate, registrationteamaccess, vendorteamaccess, volunteerteamaccess, workshopteamaccess, generalaccess, directorteamaccess, archived, documentdata) VALUES
(1, 'doc1.pdf', 'Event Schedule', 'Event', 'Schedule', '2024-05-01', 'Y', 'N', 'N', 'N', 'Y', 'N', 'N', NULL),
(2, 'doc2.pdf', 'Volunteer Guidelines', 'Volunteer', 'Guidelines', '2024-05-15', 'N', 'N', 'Y', 'N', 'Y', 'N', 'N', NULL);

-- --------------------------------------------------------

-- Insert sample data into kfeducationsettings
INSERT INTO kfeducationsettings (educationsettingsid, educationapplicationstartdate, educationapplicationenddate, educationlivedata) VALUES
(1, '2024-01-01', '2024-12-31', 'Y'),
(2, '2023-01-01', '2023-12-31', 'N');

-- --------------------------------------------------------

-- Insert sample data into kfformvendor
INSERT INTO kfformvendor (vendorid, fullname, assistantname, phone, email, companyname, website, website2, website3, numberofspaces, electricityneeded, tableneeded, previousvendor, previousvendorwhen, descriptionofproducts, comments, timestamp, status, vendorfee, numberofassistantcodes, notificationdate, fetlife1, loadthursday, willingtodemo, additionalassistantnames, teamcomments, logo, videoembedcode1, videoembedcode2, videoembedcode3, kfspecials, livechatlink, colorscheme, spacetype, streetid, spacenumber, storefrontgraphicfile) VALUES
(1, 'Vendor A', 'Assistant A', '555-1111', 'vendor.a@example.com', 'Company A', 'www.companya.com', NULL, NULL, 2, 'Y', 'Y', 'N', NULL, 'Various products', 'Excited to join!', CURRENT_TIMESTAMP(), 'Application Submitted', 375.00, 1, '2024-06-01', 'fetlife1', 'Y', 'Y', NULL, 'Team comment', 'logo1.png', 'embedcode1', NULL, NULL, 'Specials for KF', 'www.livechat.com', 'Red', 'standard', 0, 1, 'graphic1.png'),
(2, 'Vendor B', 'Assistant B', '555-2222', 'vendor.b@example.com', 'Company B', 'www.companyb.com', NULL, NULL, 1, 'N', 'N', 'Y', '2023', 'Handmade goods', 'Looking forward to it', CURRENT_TIMESTAMP(), 'Approved', 375.00, 2, '2024-06-02', 'fetlife2', 'N', 'N', NULL, 'Team comment', 'logo2.png', 'embedcode2', NULL, NULL, 'Exclusive deals', 'www.livechat2.com', 'Blue', 'premium', 1, 2, 'graphic2.png');

-- --------------------------------------------------------

-- Insert sample data into kfformvolunteer
INSERT INTO `kfformvolunteer` (
  `volunteerid`, `fullname`, `scenename`, `preferredname`, `phone`, `email`, `tshirtsize`, `pastvolunteer`, `pastvolunteerduties`,
  `firstaidtraining`, `cprtraining`, `aedtraining`, `aslinterpreter`, `dmtraining`, `dmtrainingdetails`, `dmforpla`,
  `physicallimitations`, `forkliftcard`, `scissorliftcard`, `availablewednesday`, `availablethursday`, `availablefriday`,
  `availablesaturday`, `availablesunday`, `availablemonday`, `lift50pounds`, `workshops`, `existingagreement`, `positiondesired`,
  `currentlyregistered`, `comments`, `requestingassistance`, `workstudycomments`, `timestamp`, `status`, `teamcomments`,
  `scholarshipgranted`, `numberofhours`, `accesstocomputer`, `moderatorexperience`, `onlinevideoexperience`, `stableinternet`,
  `privateandquietplacetowork`, `comfortablegivingattendeesdirections`, `abletoenforcerules`, `comfortablereadingoutloud`,
  `havemicrophoneandwebcam`, `speedtestupload`, `speedtestdownload`, `preferredpronouns`, `fetlifeprofile`, `interestarea01`,
  `interestarea02`, `interestarea03`, `interestarea04`, `interestarea05`, `interestarea06`, `interestarea07`, `interestarea08`,
  `interestarea09`, `interestarea10`, `interestarea11`, `interestarea12`, `interestarea13`, `interestarea14`, `interestarea15`,
  `interestarea16`, `interestarea17`, `interestarea18`, `interestarea19`, `interestarea20`, `plavolunteerid`, `customerid`,
  `accessibilitynotes`, `flexibleforjobassignments`, `firstname`, `lastname`, `plamember`, `address`, `city`, `state`, `zip`,
  `country`, `password`
) VALUES
(1, 'John Doe', 'JD', 'Johnny', '555-1234', 'john@example.com', 'M', 'Yes', 'Set up chairs', 'Yes', 'Yes', 'No', 'No', 'Yes',
  'Details about DM training', 'Yes', 'No', 'Yes', 'No', 'Wednesday morning', 'Thursday afternoon', 'Friday evening',
  'Saturday all day', 'Sunday morning', 'Monday afternoon', 'Yes', 'Various workshops', 'Existing agreement details',
  'Position desired', 'Yes', 'Additional comments', 'Requesting assistance details', 'Work-study comments',
  CURRENT_TIMESTAMP, 'Active', 'Team comments here', 'none', '20', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes', 'Yes',
  'Yes', 'Yes', 'Yes', '20Mbps', '100Mbps', 'He/Him', 'fetlifeprofile1', 'on', 'off', 'off', 'on', 'off',
  'off', 'on', 'off', 'off', 'on', 'off', 'off', 'off', 'on', 'off', 'off', 'off', 'on', 'off', 'off', 1, 1,
  'Accessibility notes', 'Yes', 'John', 'Doe', 'Yes', '123 Main St', 'Springfield', 'IL', '62701', 'USA',
  'password123'),
(2, 'Jane Smith', 'JSmith', 'Janie', '555-5678', 'jane@example.com', 'L', 'No', 'Helped with registration', 'Yes',
  'No', 'Yes', 'Yes', 'No', 'Another DM training detail', 'No', 'Yes', 'No', 'Yes', 'Wednesday evening', 'Thursday morning',
  'Friday all day', 'Saturday evening', 'Sunday afternoon', 'Monday morning', 'No', 'More workshop details',
  'Another existing agreement', 'Different position', 'No', 'Additional comments here', 'Different assistance details',
  'More work-study comments', CURRENT_TIMESTAMP, 'Inactive', 'More team comments', 'partial', '15', 'No', 'No',
  'No', 'No', 'No', 'No', 'No', 'No', 'No', '5Mbps', '50Mbps', 'She/Her', 'fetlifeprofile2', 'off', 'on',
  'on', 'off', 'on', 'on', 'off', 'on', 'on', 'off', 'on', 'on', 'on', 'off', 'on', 'on', 'on', 'off', 'on',
  'on', 2, 2, 'More accessibility notes', 'No', 'Jane', 'Smith', 'No', '456 Elm St', 'Greenville', 'CA',
  '90210', 'USA', 'password456');

-- --------------------------------------------------------

-- Insert sample data into kfgeneralschedule
INSERT INTO kfgeneralschedule (scheduleid, scheduledate, schedulestarttime, scheduleendtime, scheduletitle, scheduledescription, locationid, roomname, moderatorcustomerid1, moderatorcustomerid2, moderatorcustomerid3, moderatorcustomerid4, moderatorcustomerid5, moderatorcustomerid6, moderatorcustomerid7, moderatorcustomerid8, moderatorcustomerid9, moderatorcustomerid10) VALUES
(1, '2024-06-10', '09:00:00', '11:00:00', 'Opening Ceremony', 'Official opening of the event', 1, 'Main Hall', 101, 102, 103, 0, 0, 0, 0, 0, 0, 0),
(2, '2024-06-10', '11:30:00', '13:00:00', 'Keynote Address', 'Keynote presentation on emerging technologies', 3, 'Auditorium', 104, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, '2024-06-11', '10:00:00', '12:00:00', 'Workshop Session 1', 'Hands-on workshop on data analysis', 4, 'Training Center', 105, 106, 0, 0, 0, 0, 0, 0, 0, 0),
(4, '2024-06-11', '13:30:00', '15:30:00', 'Panel Discussion', 'Panel discussion on artificial intelligence', 2, 'Meeting Room A', 107, 108, 109, 110, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

-- Insert sample data into kflocations
INSERT INTO kflocations (locationid, locationname, locationnotes) VALUES
(1, 'Main Hall', 'Large conference hall on the ground floor.'),
(2, 'Meeting Room A', 'Small meeting room on the second floor.'),
(3, 'Auditorium', 'Spacious auditorium with seating for 200 people.'),
(4, 'Training Center', 'Dedicated space for workshops and training sessions.'),
(5, 'Board Room', 'Executive board room on the top floor.'),
(6, 'Outdoor Pavilion', 'Large outdoor area suitable for various events.'),
(7, 'Lobby', 'Welcoming area at the main entrance.'),
(8, 'Kitchen', 'Fully equipped kitchen for catering events.');

-- --------------------------------------------------------

-- Insert sample data into kfmailinglist
INSERT INTO kfmailinglist (mailinglistid, email, registration, volunteer, workshops, schedule, presenter, vendor, communitygroup, timestamp) VALUES
(1, 'john@example.com', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'yes', '2024-06-05 12:00:00'),
(2, 'jane@example.com', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 'no', '2024-06-05 13:00:00');

-- --------------------------------------------------------

-- Insert sample data into kfmanagers
INSERT INTO kfmanagers (managerid, managername, managerscenename, managerphonenumber, manageremail, managerduties, managerpassword) VALUES
(1, 'Alice Johnson', 'Alice', '123-456-7890', 'alice@example.com', 'Event coordination', 'password123'),
(2, 'Bob Smith', 'Bob', '987-654-3210', 'bob@example.com', 'Volunteer management', 'securepassword');

-- --------------------------------------------------------

-- Insert sample data into kfpresenters
INSERT INTO kfpresenters (presenterid, presentername, website1, email1, thumbnail1, biography, presenterlegalname, presenterhome, presenteremail, presenterphone1, contactperson, notes, status, firstname, lastname, dob, address1, city, state, postalcode, country, preferredcontactmethod, fullyvaccinated) VALUES
(1, 'John Smith', 'www.johnsmith.com', 'john@example.com', 'john_thumbnail.jpg', 'John Smith is an experienced presenter in the field of technology.', 'Johnathan Smith', 'New York, USA', 'john.smith@email.com', '+123456789', 'Jane Doe', 'Some notes about John Smith.', 'Active', 'John', 'Smith', '1980-05-15', '123 Main St', 'New York City', 'NY', '10001', 'USA', 'Email', 'Yes'),
(2, 'Jane Doe', 'www.janedoe.com', 'jane@example.com', 'jane_thumbnail.jpg', 'Jane Doe is an accomplished speaker with expertise in business management.', 'Jane Elizabeth Doe', 'Los Angeles, USA', 'jane.doe@email.com', '+1987654321', 'John Smith', 'Some notes about Jane Doe.', 'Active', 'Jane', 'Doe', '1975-10-20', '456 Elm St', 'Los Angeles', 'CA', '90001', 'USA', 'Phone', 'No');

-- --------------------------------------------------------

-- Insert sample data into kfproducts
INSERT INTO kfproducts (productid, stocknumber, vendor, title, price, status, department, category, generaldescription, image, thimage, image2, thimage2, image3, thimage3, image4, thimage4, description, shippingweight, shippingcost, taxable, manufacturer, specials, newproduct, keystocknumber, sortorder, keysortorder, departmentsortorder, categorysortorder, specialprice, specialstartdate, specialenddate, requiresregistrationcode, startdate, enddate) VALUES
(1, 'PROD123', 'ABC Corporation', 'Product 1', 99.99, 'Active', 'Electronics', 'Gadgets', 'This is a description for Product 1', 'product1.jpg', 'product1_thumb.jpg', 'product1_2.jpg', 'product1_2_thumb.jpg', 'product1_3.jpg', 'product1_3_thumb.jpg', 'product1_4.jpg', 'product1_4_thumb.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 2.5, 5.0, 'yes', 'ABC Electronics', 'no', 'yes', 'KEYPROD123', 1, 1, 1, 1, 89.99, '2024-06-01', '2024-06-30', 'no', '2024-06-01', '2024-12-31'),
(2, 'PROD456', 'XYZ Corporation', 'Product 2', 49.99, 'Active', 'Clothing', 'T-Shirts', 'This is a description for Product 2', 'product2.jpg', 'product2_thumb.jpg', 'product2_2.jpg', 'product2_2_thumb.jpg', 'product2_3.jpg', 'product2_3_thumb.jpg', 'product2_4.jpg', 'product2_4_thumb.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 1.8, 3.0, 'yes', 'XYZ Clothing', 'yes', 'no', 'KEYPROD456', 2, 2, 2, 2, 39.99, '2024-06-01', '2024-06-30', 'no', '2024-06-01', '2024-12-31'),
(3, 'PROD789', 'PQR Corporation', 'Product 3', 199.99, 'Active', 'Home & Garden', 'Furniture', 'This is a description for Product 3', 'product3.jpg', 'product3_thumb.jpg', 'product3_2.jpg', 'product3_2_thumb.jpg', 'product3_3.jpg', 'product3_3_thumb.jpg', 'product3_4.jpg', 'product3_4_thumb.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 15.0, 20.0, 'yes', 'PQR Furniture', 'no', 'no', 'KEYPROD789', 3, 3, 3, 3, 179.99, '2024-06-01', '2024-06-30', 'no', '2024-06-01', '2024-12-31'),
(4, 'PROD101112', 'LMN Corporation', 'Product 4', 149.99, 'Active', 'Electronics', 'Smartphones', 'This is a description for Product 4', 'product4.jpg', 'product4_thumb.jpg', 'product4_2.jpg', 'product4_2_thumb.jpg', 'product4_3.jpg', 'product4_3_thumb.jpg', 'product4_4.jpg', 'product4_4_thumb.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 5.0, 8.0, 'yes', 'LMN Electronics', 'no', 'no', 'KEYPROD101112', 4, 4, 4, 4, 129.99, '2024-06-01', '2024-06-30', 'no', '2024-06-01', '2024-12-31'),
(5, 'PROD131415', 'RST Corporation', 'Product 5', 29.99, 'Active', 'Beauty & Health', 'Skincare', 'This is a description for Product 5', 'product5.jpg', 'product5_thumb.jpg', 'product5_2.jpg', 'product5_2_thumb.jpg', 'product5_3.jpg', 'product5_3_thumb.jpg', 'product5_4.jpg', 'product5_4_thumb.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 0.8, 1.5, 'yes', 'RST Skincare', 'yes', 'yes', 'KEYPROD131415', 5, 5, 5, 5, 24.99, '2024-06-01', '2024-06-30', 'no', '2024-06-01', '2024-12-31');

-- --------------------------------------------------------

-- Insert sample data into kfregistrationcodes
INSERT INTO kfregistrationcodes (registrationcodeid, organization, contactname, website, registrationcode, registrationtype, registrationcost, transactionid, unlimitedcode, assignedto, email, assignmentdate, notificationdate, category) VALUES
(1, 'ABC Company', 'John Smith', 'www.abc.com', 'REG123', 'Standard', 50.00, 1001, 'no', 'User1', 'user1@example.com', '2024-06-01', '2024-06-05', 'Business'),
(2, 'XYZ Inc.', 'Jane Doe', 'www.xyz.com', 'VIP456', 'VIP', 100.00, 1002, 'yes', 'User2', 'user2@example.com', '2024-06-02', '2024-06-06', 'Corporate'),
(3, 'PQR Ltd.', 'Michael Johnson', 'www.pqr.com', 'SPE789', 'Speaker', 0.00, 0, 'no', 'User3', 'user3@example.com', '2024-06-03', '2024-06-07', 'Academic'),
(4, 'LMN Corporation', 'Emily Brown', 'www.lmn.com', 'SPO456', 'Speaker', 0.00, 0, 'no', 'User4', 'user4@example.com', '2024-06-04', '2024-06-08', 'Technical'),
(5, 'RST Enterprises', 'David Wilson', 'www.rst.com', 'STU789', 'Student', 25.00, 1003, 'no', 'User5', 'user5@example.com', '2024-06-05', '2024-06-09', 'Educational');

-- --------------------------------------------------------

-- Insert sample data into kftracks
INSERT INTO kftracks (trackid, trackname, trackcoordinator) VALUES
(1, 'Programming Fundamentals', 'John Smith'),
(2, 'Database Management', 'Emily Johnson'),
(3, 'Web Development', 'Michael Williams'),
(4, 'Data Science', 'Jessica Brown'),
(5, 'Cybersecurity', 'Daniel Miller');

-- --------------------------------------------------------

-- Insert sample data into kftransactions
INSERT INTO kftransactions (
    transactionid, customerid, transactiondate, billingdate, shippingdate, transactiontype, stocknumber, itemdescription, quantity, price, taxable, salestaxrate, shippingweight, shippingcost, shippingtrackingid, keytransactionid, transactiontimestamp, processingdate, cancellationdate, registrationcode, notes
) VALUES
(1, 1001, '2024-05-01', '2024-05-01', '2024-05-02', 'Sale', 'SKU123', 'Product A', 2, 25.99, 'Yes', 0.075, 1.5, 5.99, 'SH123456', 0, '2024-05-01 10:00:00', '2024-05-02', NULL, 'REG123', 'Customer requested expedited shipping.'),
(2, 1002, '2024-05-02', '2024-05-02', '2024-05-03', 'Sale', 'SKU456', 'Product B', 1, 49.99, 'Yes', 0.075, 2.0, 7.99, 'SH789012', 0, '2024-05-02 12:30:00', '2024-05-03', NULL, 'REG456', 'Customer prefers shipment to be delivered on weekdays.'),
(3, 1003, '2024-05-03', '2024-05-03', NULL, 'Sale', 'SKU789', 'Product C', 3, 19.99, 'Yes', 0.075, 1.2, 8.99, 'SH345678', 0, '2024-05-03 14:45:00', NULL, NULL, 'REG789', 'Customer requested gift wrapping service.');

-- --------------------------------------------------------

-- Insert sample data into kfusers
INSERT INTO kfusers (
    kfuserid, fullname, username, password, email, accessregistration, accessvendors, accessvolunteers, accessworkshops, accessdirector, accessaccessibility, accessinvoicing, accesscommunity
) VALUES
(1, 'John Doe', 'johndoe', 'password123', 'johndoe@example.com', 'Y', 'N', 'Y', 'Y', 'N', 'N', 'N', 'Y'),
(2, 'Jane Smith', 'janesmith', 'qwerty456', 'janesmith@example.com', 'Y', 'Y', 'N', 'N', 'N', 'N', 'Y', 'Y'),
(3, 'Bob Johnson', 'bob', 'pass123', 'bob@example.com', 'N', 'Y', 'Y', 'Y', 'Y', 'N', 'N', 'N'),
(4, 'Alice Brown', 'aliceb', 'abcdef', 'alice@example.com', 'Y', 'N', 'Y', 'N', 'N', 'Y', 'N', 'N'),
(5, 'Chris Lee', 'chrisl', 'p@ssw0rd', 'chris@example.com', 'Y', 'N', 'N', 'Y', 'N', 'Y', 'Y', 'Y');

-- --------------------------------------------------------

-- Insert sample data into kfvendorsettings
INSERT INTO kfvendorsettings (vendorsettingsid, vendorapplicationstartdate, vendorapplicationenddate) VALUES
(1, '2024-01-01', '2024-12-31'),
(2, '2023-01-01', '2023-12-31');

-- --------------------------------------------------------

-- Insert sample data into kfvolunteerschedule
INSERT INTO kfvolunteerschedule (scheduleid, shiftdescription, shiftnotes, managerid1, managerid2, managerid3, shiftdate, shiftstarttime, shiftendtime, locationid, volunteerid, department) VALUES
(1, 'Setup Morning Shift', 'Bring supplies from storage', 101, 102, NULL, '2024-06-01', '08:00:00', '12:00:00', 1, 100, 'Logistics'),
(2, 'Registration Afternoon', 'Assist attendees with check-in', 103, NULL, NULL, '2024-06-01', '12:00:00', '16:00:00', 2, 101, 'Registration'),
(3, 'Security Night Shift', 'Patrol perimeter and monitor entry points', 104, 105, NULL, '2024-06-01', '18:00:00', '22:00:00', 1, 102, 'Security'),
(4, 'Cleanup Morning Shift', 'Clean up venue after event', 106, NULL, NULL, '2024-06-02', '08:00:00', '12:00:00', 1, 103, 'Logistics'),
(5, 'Workshop Assistant', 'Help with setting up and running workshops', 107, 108, 109, '2024-06-02', '10:00:00', '14:00:00', 3, 104, 'Workshops'),
(6, 'Vendor Support', 'Assist vendors with setup and requirements', 110, NULL, NULL, '2024-06-02', '09:00:00', '13:00:00', 2, 105, 'Vendor Support'),
(7, 'Event Coordination', 'Coordinate activities and support event flow', 111, 112, 113, '2024-06-03', '14:00:00', '18:00:00', 1, 106, 'Event Coordination'),
(8, 'Technical Support', 'Provide technical support for equipment and presentations', 114, NULL, NULL, '2024-06-03', '15:00:00', '19:00:00', 3, 107, 'Technical Support'),
(9, 'Hospitality', 'Assist with hospitality services for VIPs and guests', 115, 116, NULL, '2024-06-03', '08:00:00', '12:00:00', 1, 108, 'Hospitality'),
(10, 'Parking Management', 'Direct attendees to parking areas and manage traffic', 117, 118, NULL, '2024-06-03', '07:00:00', '11:00:00', 4, 109, 'Logistics');

-- --------------------------------------------------------

-- Insert sample data into kfvolunteersettings
INSERT INTO kfvolunteersettings (volunteersettingsid, volunteerapplicationstartdate, volunteerapplicationenddate) VALUES
(1, '2024-01-01', '2024-03-01'),
(2, '2024-03-15', '2024-05-15'),
(3, '2024-06-01', '2024-08-01'),
(4, '2024-09-01', '2024-11-01'),
(5, '2024-11-15', '2025-01-15');

-- --------------------------------------------------------

-- Insert sample data into kfworkshops
INSERT INTO kfworkshops (
    workshopid, presenterid1, presenterid2, presenterid3, presenterid4, presenterid5,
    workshoptitle, workshopdescription, presentername, taughtprior, taughtpriordetails,
    handsonskills, lecture, discussion, demonstration, beginner, intermediate, advanced,
    alllevels, participantrequirements, presenterneeds, status, notes, vote01, vote02,
    vote03, vote04, vote05, vote06, vote07, vote08, vote09, vote10, classschedulerequest,
    specialclassroomneeds, avandscreen, screenonly, safesexmedical, dryeraseboard, power,
    paperandpens, flipchart, suspensionframe, needcross, massagetable, heavytable, trackid,
    classlength, disclosure, keywords, roomname, moderatorcustomerid1, moderatorcustomerid2,
    moderatorcustomerid3, moderatorcustomerid4, moderatorcustomerid5, moderatorcustomerid6,
    moderatorcustomerid7, moderatorcustomerid8, moderatorcustomerid9, moderatorcustomerid10
) VALUES
(1, 101, 102, 103, NULL, NULL, 'Introduction to Python', 'Learn the basics of Python programming.', 'Alice Johnson',
 'Yes', 'Previously taught at XYZ conference.', 'Yes', 'Yes', 'No', 'Yes', 'Yes', 'No', 'No', 'No',
 'Basic understanding of programming.', 'Projector and laptop.', 'Confirmed', 'N/A', 'Yes', 'No', 'No', 'Yes', 'Yes',
 'No', 'No', 'Yes', 'No', 'No', 'Morning preferred', 'None', 1, 0, 0, 1, 1, 1, 0, 0, 0, 1, 0, 1, '60 minutes',
 'No special disclosures.', 'Python, programming, basics', 'Room A', 201, 202, NULL, NULL, NULL, NULL, NULL, NULL, NULL,
  NULL),
(2, 104, 105, NULL, NULL, NULL, 'Advanced Machine Learning', 'Dive deep into machine learning algorithms.', 'Bob Smith',
 'No', 'N/A', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Basic knowledge of Python and statistics.',
 'Laptop and internet access.', 'Pending', 'N/A', 'No', 'Yes', 'No', 'No', 'No', 'Yes', 'No', 'Yes', 'No', 'Yes',
 'Afternoon preferred', 'None', 1, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 2, '90 minutes', 'No special disclosures.',
 'Machine Learning, AI, advanced', 'Room B', 203, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 106, NULL, NULL, NULL, NULL, 'Creative Writing Workshop', 'Enhance your creative writing skills.', 'Carol White',
 'Yes', 'Taught at ABC workshop.', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'No',
 'Bring your own notebook and pen.', 'None.', 'Confirmed', 'N/A', 'Yes', 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No',
 'Yes', 'No', 'Anytime', 'None', 0, 0, 0, 1, 0, 1, 1, 0, 0, 1, 1, 3, '120 minutes',
 'Sensitive content may be discussed.', 'Writing, creativity, literature', 'Room C', 204, 205, NULL, NULL, NULL, NULL,
 NULL, NULL, NULL, NULL),
(4, 107, 108, 109, 110, 111, 'Photography Basics', 'Learn the fundamentals of photography.', 'David Brown', 'No', 'N/A',
 'Yes', 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'No', 'Camera required.', 'Projector and screen.', 'Confirmed', 'N/A',
 'No', 'No', 'Yes', 'Yes', 'No', 'No', 'Yes', 'No', 'No', 'Yes', 'Morning preferred', 'None', 1, 0, 0, 1, 0, 1,
 0, 1, 0, 0, 1, 4, '60 minutes', 'No special disclosures.', 'Photography, basics, camera', 'Room D', 206, NULL, NULL,
 NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 112, 113, NULL, NULL, NULL, 'Yoga for Beginners', 'An introduction to yoga practices.', 'Eve Green', 'Yes',
 'Taught at DEF retreat.', 'Yes', 'No', 'Yes', 'No', 'Yes', 'No', 'No', 'Yes', 'Yoga mat required.', 'None.',
 'Confirmed', 'N/A', 'No', 'No', 'Yes', 'No', 'Yes', 'Yes', 'No', 'Yes', 'No', 'Yes', 'Anytime', 'None', 0, 0, 0,
 0, 0, 1, 0, 0, 1, 1, 0, 5, '45 minutes', 'Physical activity involved.', 'Yoga, fitness, beginners', 'Room E', 207, 208,
 NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

-- Insert sample data into kfworkshopschedule
INSERT INTO kfworkshopschedule (
    scheduleid, workshopdate, workshopstarttime, workshopendtime, locationid, workshopid, schedulestatus
) VALUES
(1, '2024-07-10', '09:00:00', '10:00:00', 1, 1, 'Confirmed'),
(2, '2024-07-10', '10:30:00', '12:00:00', 2, 2, 'Pending'),
(3, '2024-07-11', '13:00:00', '15:00:00', 3, 3, 'Confirmed'),
(4, '2024-07-12', '08:00:00', '09:00:00', 4, 4, 'Preview'),
(5, '2024-07-12', '09:30:00', '10:15:00', 5, 5, 'Confirmed'),
(6, '2024-07-13', '11:00:00', '12:00:00', 1, 1, 'Preview'),
(7, '2024-07-14', '14:00:00', '15:30:00', 2, 2, 'Confirmed'),
(8, '2024-07-15', '15:00:00', '17:00:00', 3, 3, 'Pending'),
(9, '2024-07-16', '09:00:00', '10:00:00', 4, 4, 'Confirmed'),
(10, '2024-07-17', '08:00:00', '08:45:00', 5, 5, 'Preview');
