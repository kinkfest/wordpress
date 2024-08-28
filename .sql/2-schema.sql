-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2024 at 11:14 AM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.2.17

-- create the legacy PLA database
# CREATE DATABASE IF NOT EXISTS portlandleatherorg;
# GRANT ALL ON portlandleatherorg.* TO kf@'%';

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portlandleatherorg`
--

# USE portlandleatherorg;

-- --------------------------------------------------------

--
-- Table structure for table `ballots`
--

CREATE TABLE `ballots` (
  `ballotid` int(11) NOT NULL,
  `memberid` int(11) DEFAULT 0,
  `tag` char(255) DEFAULT NULL,
  `votingdate` date DEFAULT NULL,
  `votingtime` time DEFAULT NULL,
  `votingipaddress` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogitems`
--

CREATE TABLE `blogitems` (
  `itemid` int(10) UNSIGNED NOT NULL,
  `channelid` int(11) DEFAULT NULL,
  `threaditemid` int(10) DEFAULT NULL,
  `title` char(255) DEFAULT NULL,
  `link` char(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `description2` text DEFAULT NULL,
  `author` char(255) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `password` char(50) DEFAULT NULL,
  `icon` char(255) DEFAULT NULL,
  `postingdate` date DEFAULT NULL,
  `photo1` char(255) DEFAULT NULL,
  `photo2` char(255) DEFAULT NULL,
  `photo3` char(255) DEFAULT NULL,
  `photo4` char(255) DEFAULT NULL,
  `photo5` char(255) DEFAULT NULL,
  `photo6` char(255) DEFAULT NULL,
  `photo7` char(255) DEFAULT NULL,
  `photo8` char(255) DEFAULT NULL,
  `photo9` char(255) DEFAULT NULL,
  `photo10` char(255) DEFAULT NULL,
  `status` char(20) NOT NULL DEFAULT 'Pending',
  `category` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boarddocuments`
--

CREATE TABLE `boarddocuments` (
  `documentid` int(11) NOT NULL,
  `documentfilename` char(255) DEFAULT NULL,
  `documentdisplayname` char(255) DEFAULT NULL,
  `documentcategory` char(255) DEFAULT NULL,
  `documentsubcategory` char(255) DEFAULT NULL,
  `documentdate` date DEFAULT NULL,
  `documentdata` longblob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `calendarid` int(10) UNSIGNED NOT NULL,
  `email` char(50) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `eventtitle` text DEFAULT NULL,
  `eventdate` date DEFAULT NULL,
  `eventstarttime` time DEFAULT NULL,
  `eventendtime` time DEFAULT NULL,
  `eventlink` varchar(255) DEFAULT NULL,
  `eventlinkdescription` char(255) DEFAULT NULL,
  `eventicon` varchar(255) DEFAULT NULL,
  `eventlocation` varchar(255) DEFAULT NULL,
  `sponsorlink` varchar(255) DEFAULT NULL,
  `sponsoricon` varchar(255) DEFAULT NULL,
  `eventtext` text DEFAULT NULL,
  `eventphoto1` varchar(255) DEFAULT NULL,
  `eventphoto1width` int(11) DEFAULT NULL,
  `eventphotoalign1` varchar(10) DEFAULT NULL,
  `eventphotocaption1` varchar(255) DEFAULT NULL,
  `eventphotolink1` varchar(255) DEFAULT NULL,
  `eventfulldescription1` text DEFAULT NULL,
  `eventphoto2` varchar(255) DEFAULT NULL,
  `eventphoto2width` int(11) DEFAULT NULL,
  `eventphotoalign2` varchar(10) DEFAULT NULL,
  `eventphotocaption2` varchar(255) DEFAULT NULL,
  `eventphotolink2` varchar(255) DEFAULT NULL,
  `eventfulldescription2` text DEFAULT NULL,
  `eventphoto3` varchar(255) DEFAULT NULL,
  `eventphoto3width` int(11) DEFAULT NULL,
  `eventphotoalign3` varchar(10) DEFAULT NULL,
  `eventphotocaption3` varchar(255) DEFAULT NULL,
  `eventphotolink3` varchar(255) DEFAULT NULL,
  `eventfulldescription3` text DEFAULT NULL,
  `banner1image` varchar(255) DEFAULT NULL,
  `banner1alttext` varchar(255) DEFAULT NULL,
  `banner1url` varchar(255) DEFAULT NULL,
  `banner2image` varchar(255) DEFAULT NULL,
  `banner2alttext` varchar(255) DEFAULT NULL,
  `banner2url` varchar(255) DEFAULT NULL,
  `banner3image` varchar(255) DEFAULT NULL,
  `banner3alttext` varchar(255) DEFAULT NULL,
  `banner3url` varchar(255) DEFAULT NULL,
  `status` char(10) NOT NULL DEFAULT 'Approved',
  `showonhomepage` char(5) DEFAULT 'N',
  `recurringeventid` int(11) DEFAULT 0,
  `dropdate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `electionusers`
--

CREATE TABLE `electionusers` (
  `userid` int(11) NOT NULL,
  `fullname` char(255) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `accessmembers` char(5) DEFAULT 'N',
  `accessballots` char(5) DEFAULT 'N',
  `accessvotes` char(5) DEFAULT 'N',
  `usertype` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfaccessibilitysurvey`
--

CREATE TABLE `kfaccessibilitysurvey` (
  `kfaccessibilitysurveyid` int(11) NOT NULL,
  `customerid` int(11) DEFAULT 0,
  `fullname` varchar(50) DEFAULT NULL,
  `preferredname` varchar(50) DEFAULT NULL,
  `preferredpronouns` varchar(50) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `otherrequests` text DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `teamnotes` text DEFAULT NULL,
  `conciergeservices` varchar(5) DEFAULT 'N',
  `priorityseating` varchar(5) DEFAULT 'N',
  `rentingmobilitydevice` varchar(5) DEFAULT 'N',
  `serviceanimal` varchar(5) DEFAULT 'N',
  `sharps` varchar(5) DEFAULT 'N',
  `useoftechnology` varchar(5) DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfcommunityevents`
--

CREATE TABLE `kfcommunityevents` (
  `kfcommunityeventid` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `preferredname` varchar(50) DEFAULT NULL,
  `preferredpronouns` varchar(50) DEFAULT NULL,
  `phone` varchar(25) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `communityeventname` varchar(255) DEFAULT NULL,
  `communityeventdescription` text DEFAULT NULL,
  `estimatedattendees` varchar(25) DEFAULT NULL,
  `requestedmeetingdate` date DEFAULT NULL,
  `requestedmeetingtime` time DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `teamnotes` text DEFAULT NULL,
  `marketevent` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfcustomer`
--

CREATE TABLE `kfcustomer` (
  `customerid` int(11) NOT NULL,
  `firstname` char(50) DEFAULT NULL,
  `lastname` char(50) DEFAULT NULL,
  `scenename` char(75) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `phone` char(25) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address1` char(50) DEFAULT NULL,
  `address2` char(50) DEFAULT NULL,
  `city` char(25) DEFAULT NULL,
  `state` char(25) DEFAULT NULL,
  `postalcode` char(25) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `cardholdername` char(50) DEFAULT NULL,
  `registrationcode` char(25) DEFAULT NULL,
  `memberid` int(11) DEFAULT 0,
  `tag` char(255) DEFAULT NULL,
  `howdidyouhearaboutkf` char(255) DEFAULT NULL,
  `refunded` char(5) DEFAULT 'N',
  `wristbandcolor` char(50) DEFAULT NULL,
  `verified` char(5) NOT NULL DEFAULT 'off',
  `checkindate` date DEFAULT NULL,
  `checkintime` time DEFAULT NULL,
  `checkinby` char(50) DEFAULT NULL,
  `file01` char(255) DEFAULT NULL,
  `deferralnotificationsent` char(5) DEFAULT 'N',
  `deferralnotificationsentdate` date DEFAULT NULL,
  `deferralrequesteddate` date DEFAULT NULL,
  `deferralconfirmationsentdate` date DEFAULT NULL,
  `consenttocodeofconduct` char(10) DEFAULT NULL,
  `consenttowaiver` char(10) DEFAULT NULL,
  `legalnameforconsents` char(50) DEFAULT NULL,
  `uuid` char(100) DEFAULT NULL,
  `covid19vaccinated` varchar(5) DEFAULT NULL,
  `covid19verifiedby` varchar(255) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `rawpassword` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `banned` char(5) DEFAULT 'N',
  `bandate` date DEFAULT NULL,
  `bantime` time DEFAULT NULL,
  `banreason` text DEFAULT NULL,
  `moderatorcustomerid` int(11) DEFAULT NULL,
  `banapprovedcustomerid` int(11) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `preferredpronouns` text DEFAULT NULL,
  `accessibilityneeds` text DEFAULT NULL,
  `accessibilityteamnotes` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfdocuments`
--

CREATE TABLE `kfdocuments` (
  `documentid` int(11) NOT NULL,
  `documentfilename` char(255) DEFAULT NULL,
  `documentdisplayname` char(255) DEFAULT NULL,
  `documentcategory` char(255) DEFAULT NULL,
  `documentsubcategory` char(255) DEFAULT NULL,
  `documentdate` date DEFAULT NULL,
  `registrationteamaccess` char(5) DEFAULT NULL,
  `vendorteamaccess` char(5) DEFAULT NULL,
  `volunteerteamaccess` char(5) DEFAULT NULL,
  `workshopteamaccess` char(5) DEFAULT NULL,
  `generalaccess` char(5) DEFAULT NULL,
  `directorteamaccess` char(5) DEFAULT NULL,
  `archived` char(5) DEFAULT NULL,
  `documentdata` longblob DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfeducationsettings`
--

CREATE TABLE `kfeducationsettings` (
  `educationsettingsid` int(11) NOT NULL,
  `educationapplicationstartdate` date DEFAULT NULL,
  `educationapplicationenddate` date DEFAULT NULL,
  `educationlivedata` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfformvendor`
--

CREATE TABLE `kfformvendor` (
  `vendorid` int(11) NOT NULL,
  `fullname` char(50) DEFAULT NULL,
  `assistantname` char(50) DEFAULT NULL,
  `phone` char(25) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `companyname` char(50) DEFAULT NULL,
  `website` char(255) DEFAULT NULL,
  `website2` char(255) DEFAULT NULL,
  `website3` char(255) DEFAULT NULL,
  `numberofspaces` int(11) DEFAULT 1,
  `electricityneeded` char(5) DEFAULT NULL,
  `tableneeded` char(5) DEFAULT NULL,
  `previousvendor` char(5) DEFAULT NULL,
  `previousvendorwhen` char(255) DEFAULT NULL,
  `descriptionofproducts` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `status` char(255) DEFAULT 'Application Submitted',
  `vendorfee` double(15,2) DEFAULT 375.00,
  `numberofassistantcodes` int(11) NOT NULL DEFAULT 1,
  `notificationdate` date DEFAULT NULL,
  `fetlife1` char(255) DEFAULT NULL,
  `loadthursday` char(5) DEFAULT NULL,
  `willingtodemo` char(5) DEFAULT NULL,
  `additionalassistantnames` char(255) DEFAULT NULL,
  `teamcomments` text DEFAULT NULL,
  `logo` char(255) DEFAULT NULL,
  `videoembedcode1` char(255) DEFAULT NULL,
  `videoembedcode2` char(255) DEFAULT NULL,
  `videoembedcode3` char(255) DEFAULT NULL,
  `kfspecials` text DEFAULT NULL,
  `livechatlink` char(255) DEFAULT NULL,
  `colorscheme` char(255) DEFAULT NULL,
  `spacetype` char(50) DEFAULT 'standard',
  `streetid` int(11) DEFAULT 0,
  `spacenumber` int(11) DEFAULT 0,
  `storefrontgraphicfile` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfformvolunteer`
--

CREATE TABLE `kfformvolunteer` (
  `volunteerid` int(11) NOT NULL,
  `fullname` char(50) DEFAULT NULL,
  `scenename` char(255) DEFAULT NULL,
  `preferredname` char(255) DEFAULT NULL,
  `phone` char(25) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `tshirtsize` char(10) DEFAULT NULL,
  `pastvolunteer` char(5) DEFAULT NULL,
  `pastvolunteerduties` char(255) DEFAULT NULL,
  `firstaidtraining` char(5) DEFAULT NULL,
  `cprtraining` char(5) DEFAULT NULL,
  `aedtraining` char(5) DEFAULT NULL,
  `aslinterpreter` char(5) DEFAULT NULL,
  `dmtraining` char(5) DEFAULT NULL,
  `dmtrainingdetails` text DEFAULT NULL,
  `dmforpla` char(5) DEFAULT NULL,
  `physicallimitations` char(5) DEFAULT NULL,
  `forkliftcard` char(5) DEFAULT NULL,
  `scissorliftcard` char(5) DEFAULT NULL,
  `availablewednesday` char(255) DEFAULT NULL,
  `availablethursday` char(255) DEFAULT NULL,
  `availablefriday` char(255) DEFAULT NULL,
  `availablesaturday` char(255) DEFAULT NULL,
  `availablesunday` char(255) DEFAULT NULL,
  `availablemonday` char(255) DEFAULT NULL,
  `lift50pounds` char(5) DEFAULT NULL,
  `workshops` text DEFAULT NULL,
  `existingagreement` text DEFAULT NULL,
  `positiondesired` char(255) DEFAULT NULL,
  `currentlyregistered` char(5) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `requestingassistance` char(255) DEFAULT NULL,
  `workstudycomments` text DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `status` char(50) DEFAULT NULL,
  `teamcomments` text DEFAULT NULL,
  `scholarshipgranted` char(50) DEFAULT 'none',
  `numberofhours` char(50) DEFAULT NULL,
  `accesstocomputer` char(5) DEFAULT NULL,
  `moderatorexperience` char(5) DEFAULT NULL,
  `onlinevideoexperience` char(5) DEFAULT NULL,
  `stableinternet` char(5) DEFAULT NULL,
  `privateandquietplacetowork` char(5) DEFAULT NULL,
  `comfortablegivingattendeesdirections` char(5) DEFAULT NULL,
  `abletoenforcerules` char(5) DEFAULT NULL,
  `comfortablereadingoutloud` char(5) DEFAULT NULL,
  `havemicrophoneandwebcam` char(5) DEFAULT NULL,
  `speedtestupload` char(25) DEFAULT NULL,
  `speedtestdownload` char(25) DEFAULT NULL,
  `preferredpronouns` varchar(255) DEFAULT NULL,
  `fetlifeprofile` varchar(255) DEFAULT NULL,
  `interestarea01` varchar(5) DEFAULT 'off',
  `interestarea02` varchar(5) DEFAULT 'off',
  `interestarea03` varchar(5) DEFAULT 'off',
  `interestarea04` varchar(5) DEFAULT 'off',
  `interestarea05` varchar(5) DEFAULT 'off',
  `interestarea06` varchar(5) DEFAULT 'off',
  `interestarea07` varchar(5) DEFAULT 'off',
  `interestarea08` varchar(5) DEFAULT 'off',
  `interestarea09` varchar(5) DEFAULT 'off',
  `interestarea10` varchar(5) DEFAULT 'off',
  `interestarea11` varchar(5) DEFAULT 'off',
  `interestarea12` varchar(5) DEFAULT 'off',
  `interestarea13` varchar(5) DEFAULT 'off',
  `interestarea14` varchar(5) DEFAULT 'off',
  `interestarea15` varchar(5) DEFAULT 'off',
  `interestarea16` varchar(5) DEFAULT 'off',
  `interestarea17` varchar(5) DEFAULT 'off',
  `interestarea18` varchar(5) DEFAULT 'off',
  `interestarea19` varchar(5) DEFAULT 'off',
  `interestarea20` varchar(5) DEFAULT 'off',
  `plavolunteerid` int(11) DEFAULT 0,
  `customerid` int(11) DEFAULT 0,
  `accessibilitynotes` text DEFAULT NULL,
  `flexibleforjobassignments` varchar(5) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `plamember` varchar(5) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfgeneralschedule`
--

CREATE TABLE `kfgeneralschedule` (
  `scheduleid` int(11) NOT NULL,
  `scheduledate` date DEFAULT NULL,
  `schedulestarttime` time DEFAULT NULL,
  `scheduleendtime` time DEFAULT NULL,
  `scheduletitle` varchar(255) DEFAULT NULL,
  `scheduledescription` text DEFAULT NULL,
  `locationid` int(11) DEFAULT 0,
  `roomname` varchar(255) DEFAULT NULL,
  `moderatorcustomerid1` int(11) DEFAULT 0,
  `moderatorcustomerid2` int(11) DEFAULT 0,
  `moderatorcustomerid3` int(11) DEFAULT 0,
  `moderatorcustomerid4` int(11) DEFAULT 0,
  `moderatorcustomerid5` int(11) DEFAULT 0,
  `moderatorcustomerid6` int(11) DEFAULT 0,
  `moderatorcustomerid7` int(11) DEFAULT 0,
  `moderatorcustomerid8` int(11) DEFAULT 0,
  `moderatorcustomerid9` int(11) DEFAULT 0,
  `moderatorcustomerid10` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kflocations`
--

CREATE TABLE `kflocations` (
  `locationid` int(11) NOT NULL,
  `locationname` char(255) DEFAULT NULL,
  `locationnotes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfmailinglist`
--

CREATE TABLE `kfmailinglist` (
  `mailinglistid` int(11) NOT NULL,
  `email` char(75) NOT NULL,
  `registration` char(5) DEFAULT NULL,
  `volunteer` char(5) DEFAULT NULL,
  `workshops` char(5) DEFAULT NULL,
  `schedule` char(5) DEFAULT NULL,
  `presenter` char(5) DEFAULT NULL,
  `vendor` char(5) DEFAULT NULL,
  `communitygroup` char(5) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfmanagers`
--

CREATE TABLE `kfmanagers` (
  `managerid` int(11) NOT NULL,
  `managername` char(255) DEFAULT NULL,
  `managerscenename` char(255) DEFAULT NULL,
  `managerphonenumber` char(255) DEFAULT NULL,
  `manageremail` char(255) DEFAULT NULL,
  `managerduties` char(255) DEFAULT NULL,
  `managerpassword` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfpresenters`
--

CREATE TABLE `kfpresenters` (
  `presenterid` int(11) NOT NULL,
  `presentername` char(255) DEFAULT NULL,
  `website1` char(255) DEFAULT NULL,
  `website2` char(255) DEFAULT NULL,
  `website3` char(255) DEFAULT NULL,
  `website4` char(255) DEFAULT NULL,
  `website5` char(255) DEFAULT NULL,
  `email1` char(255) DEFAULT NULL,
  `thumbnail1` char(255) DEFAULT NULL,
  `photo1` char(255) DEFAULT NULL,
  `biography` text DEFAULT NULL,
  `presenterlegalname` char(255) DEFAULT NULL,
  `presenterhome` char(255) DEFAULT NULL,
  `presenteremail` char(255) DEFAULT NULL,
  `presenterphone1` char(25) DEFAULT NULL,
  `presenterphone2` char(25) DEFAULT NULL,
  `contactperson` char(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `numberofclasses` char(25) DEFAULT NULL,
  `consideration` text DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `comps` char(255) DEFAULT NULL,
  `rooms` char(255) DEFAULT NULL,
  `roomnights` char(255) DEFAULT NULL,
  `roomcostpernight` double(8,2) DEFAULT NULL,
  `actualcompensation` double(8,2) DEFAULT 0.00,
  `airfaregashonorarium` double(8,2) DEFAULT 0.00,
  `status` char(25) DEFAULT NULL,
  `thereferences` text DEFAULT NULL,
  `previouskfappearances` text DEFAULT NULL,
  `vote01` char(5) DEFAULT NULL,
  `vote02` char(5) DEFAULT NULL,
  `vote03` char(5) DEFAULT NULL,
  `vote04` char(5) DEFAULT NULL,
  `vote05` char(5) DEFAULT NULL,
  `vote06` char(5) DEFAULT NULL,
  `vote07` char(5) DEFAULT NULL,
  `vote08` char(5) DEFAULT NULL,
  `vote09` char(5) DEFAULT NULL,
  `vote10` char(5) DEFAULT NULL,
  `flightinformation` char(255) DEFAULT NULL,
  `flightinformationout` char(255) DEFAULT NULL,
  `groundtransportation` char(255) DEFAULT NULL,
  `roomdates` char(255) DEFAULT NULL,
  `specialroomrequests` text DEFAULT NULL,
  `bookingnotes` char(50) DEFAULT NULL,
  `onehourworkshop` char(5) DEFAULT NULL,
  `willingtorepeat` char(5) DEFAULT NULL,
  `availablefriday` char(5) DEFAULT NULL,
  `availablesunday` char(5) DEFAULT NULL,
  `unabletopresentschedulingnotes` text DEFAULT NULL,
  `needtableforbooksigning` char(5) DEFAULT NULL,
  `firstname` char(50) DEFAULT NULL,
  `lastname` char(50) DEFAULT NULL,
  `scenename` char(50) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address1` char(50) DEFAULT NULL,
  `address2` char(50) DEFAULT NULL,
  `city` char(25) DEFAULT NULL,
  `state` char(25) DEFAULT NULL,
  `postalcode` char(25) DEFAULT NULL,
  `country` char(50) DEFAULT NULL,
  `customerid` int(11) DEFAULT 0,
  `preferredcontactmethod` char(255) DEFAULT NULL,
  `fullyvaccinated` varchar(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfproducts`
--

CREATE TABLE `kfproducts` (
  `productid` int(11) UNSIGNED NOT NULL,
  `stocknumber` varchar(50) DEFAULT NULL,
  `vendor` varchar(50) DEFAULT NULL,
  `title` text DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `generaldescription` text DEFAULT NULL,
  `image` varchar(50) DEFAULT NULL,
  `thimage` char(255) DEFAULT NULL,
  `image2` char(255) DEFAULT NULL,
  `thimage2` char(255) DEFAULT NULL,
  `image3` char(255) DEFAULT NULL,
  `thimage3` char(255) DEFAULT NULL,
  `image4` char(255) DEFAULT NULL,
  `thimage4` char(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `shippingweight` float(6,2) DEFAULT NULL,
  `shippingcost` float(6,2) DEFAULT NULL,
  `taxable` varchar(10) DEFAULT NULL,
  `manufacturer` varchar(50) DEFAULT NULL,
  `specials` varchar(5) DEFAULT NULL,
  `newproduct` varchar(5) DEFAULT NULL,
  `keystocknumber` char(50) DEFAULT NULL,
  `sortorder` int(11) DEFAULT 10,
  `keysortorder` int(11) DEFAULT 10,
  `departmentsortorder` int(11) DEFAULT 10,
  `categorysortorder` int(11) DEFAULT 10,
  `specialprice` float(6,2) NOT NULL DEFAULT 0.00,
  `specialstartdate` date DEFAULT NULL,
  `specialenddate` date DEFAULT NULL,
  `requiresregistrationcode` char(5) DEFAULT 'no',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfregistrationcodes`
--

CREATE TABLE `kfregistrationcodes` (
  `registrationcodeid` int(11) NOT NULL,
  `organization` char(50) DEFAULT NULL,
  `contactname` char(50) DEFAULT NULL,
  `website` char(50) DEFAULT NULL,
  `registrationcode` char(25) NOT NULL,
  `registrationtype` char(25) NOT NULL,
  `registrationcost` double(14,2) NOT NULL DEFAULT 0.00,
  `transactionid` int(11) DEFAULT 0,
  `unlimitedcode` char(5) DEFAULT 'no',
  `assignedto` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `assignmentdate` date DEFAULT NULL,
  `notificationdate` date DEFAULT NULL,
  `category` char(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kftracks`
--

CREATE TABLE `kftracks` (
  `trackid` int(11) NOT NULL,
  `trackname` char(255) DEFAULT NULL,
  `trackcoordinator` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kftransactions`
--

CREATE TABLE `kftransactions` (
  `transactionid` int(10) UNSIGNED NOT NULL,
  `customerid` int(12) DEFAULT NULL,
  `transactiondate` date DEFAULT NULL,
  `billingdate` date DEFAULT NULL,
  `shippingdate` date DEFAULT NULL,
  `transactiontype` varchar(50) DEFAULT NULL,
  `stocknumber` varchar(50) DEFAULT NULL,
  `itemdescription` text DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` float(6,2) DEFAULT NULL,
  `taxable` varchar(10) DEFAULT NULL,
  `salestaxrate` float(6,3) DEFAULT NULL,
  `shippingweight` float(6,2) DEFAULT NULL,
  `shippingcost` float(6,2) DEFAULT NULL,
  `shippingtrackingid` varchar(50) DEFAULT NULL,
  `keytransactionid` int(10) NOT NULL DEFAULT 0,
  `transactiontimestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `processingdate` date DEFAULT NULL,
  `cancellationdate` date DEFAULT NULL,
  `registrationcode` char(25) DEFAULT NULL,
  `notes` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfusers`
--

CREATE TABLE `kfusers` (
  `kfuserid` int(11) NOT NULL,
  `fullname` char(255) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `accessregistration` char(5) DEFAULT 'N',
  `accessvendors` char(5) DEFAULT 'N',
  `accessvolunteers` char(5) DEFAULT 'N',
  `accessworkshops` char(5) DEFAULT 'N',
  `accessdirector` char(5) DEFAULT 'N',
  `accessaccessibility` char(5) DEFAULT 'N',
  `accessinvoicing` char(5) DEFAULT 'N',
  `accesscommunity` char(5) DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfvendorsettings`
--

CREATE TABLE `kfvendorsettings` (
  `vendorsettingsid` int(11) NOT NULL,
  `vendorapplicationstartdate` date DEFAULT NULL,
  `vendorapplicationenddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfvolunteerschedule`
--

CREATE TABLE `kfvolunteerschedule` (
  `scheduleid` int(11) NOT NULL,
  `shiftdescription` char(255) DEFAULT NULL,
  `shiftnotes` varchar(255) DEFAULT NULL,
  `managerid1` int(11) DEFAULT NULL,
  `managerid2` int(11) DEFAULT NULL,
  `managerid3` int(11) DEFAULT NULL,
  `shiftdate` date DEFAULT NULL,
  `shiftstarttime` time DEFAULT NULL,
  `shiftendtime` time DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `volunteerid` int(11) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfvolunteersettings`
--

CREATE TABLE `kfvolunteersettings` (
  `volunteersettingsid` int(11) NOT NULL,
  `volunteerapplicationstartdate` date DEFAULT NULL,
  `volunteerapplicationenddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfworkshops`
--

CREATE TABLE `kfworkshops` (
  `workshopid` int(11) NOT NULL,
  `presenterid1` int(11) DEFAULT NULL,
  `presenterid2` int(11) DEFAULT NULL,
  `presenterid3` int(11) DEFAULT NULL,
  `presenterid4` int(11) DEFAULT NULL,
  `presenterid5` int(11) DEFAULT NULL,
  `workshoptitle` char(255) DEFAULT NULL,
  `workshopdescription` text DEFAULT NULL,
  `presentername` char(255) DEFAULT NULL,
  `taughtprior` char(5) DEFAULT NULL,
  `taughtpriordetails` text DEFAULT NULL,
  `handsonskills` char(5) DEFAULT NULL,
  `lecture` char(5) DEFAULT NULL,
  `discussion` char(5) DEFAULT NULL,
  `demonstration` char(5) DEFAULT NULL,
  `beginner` char(5) DEFAULT NULL,
  `intermediate` char(5) DEFAULT NULL,
  `advanced` char(5) DEFAULT NULL,
  `alllevels` char(5) DEFAULT NULL,
  `participantrequirements` text DEFAULT NULL,
  `presenterneeds` text DEFAULT NULL,
  `status` char(25) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `vote01` char(5) DEFAULT NULL,
  `vote02` char(5) DEFAULT NULL,
  `vote03` char(5) DEFAULT NULL,
  `vote04` char(5) DEFAULT NULL,
  `vote05` char(5) DEFAULT NULL,
  `vote06` char(5) DEFAULT NULL,
  `vote07` char(5) DEFAULT NULL,
  `vote08` char(5) DEFAULT NULL,
  `vote09` char(5) DEFAULT NULL,
  `vote10` char(5) DEFAULT NULL,
  `classschedulerequest` char(255) DEFAULT NULL,
  `specialclassroomneeds` text DEFAULT NULL,
  `avandscreen` int(11) DEFAULT 0,
  `screenonly` int(11) DEFAULT 0,
  `safesexmedical` int(11) DEFAULT 0,
  `dryeraseboard` int(11) DEFAULT 0,
  `power` int(11) DEFAULT 0,
  `paperandpens` int(11) DEFAULT 0,
  `flipchart` int(11) DEFAULT 0,
  `suspensionframe` int(11) DEFAULT 0,
  `needcross` int(11) DEFAULT 0,
  `massagetable` int(11) DEFAULT 0,
  `heavytable` int(11) DEFAULT 0,
  `trackid` int(11) DEFAULT 0,
  `classlength` char(255) DEFAULT NULL,
  `disclosure` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `roomname` char(255) DEFAULT NULL,
  `moderatorcustomerid1` int(11) DEFAULT 0,
  `moderatorcustomerid2` int(11) DEFAULT 0,
  `moderatorcustomerid3` int(11) DEFAULT 0,
  `moderatorcustomerid4` int(11) DEFAULT 0,
  `moderatorcustomerid5` int(11) DEFAULT 0,
  `moderatorcustomerid6` int(11) DEFAULT 0,
  `moderatorcustomerid7` int(11) DEFAULT 0,
  `moderatorcustomerid8` int(11) DEFAULT 0,
  `moderatorcustomerid9` int(11) DEFAULT 0,
  `moderatorcustomerid10` int(11) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kfworkshopschedule`
--

CREATE TABLE `kfworkshopschedule` (
  `scheduleid` int(11) NOT NULL,
  `workshopdate` date DEFAULT NULL,
  `workshopstarttime` time DEFAULT NULL,
  `workshopendtime` time DEFAULT NULL,
  `locationid` int(11) DEFAULT NULL,
  `workshopid` int(11) DEFAULT NULL,
  `schedulestatus` char(255) DEFAULT 'Preview'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Members`
--

CREATE TABLE `Members` (
  `ID` int(8) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `First Name` varchar(50) DEFAULT NULL,
  `Last Name` varchar(50) DEFAULT NULL,
  `Date of Birth` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Scene Name` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `E-mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Phone` varchar(16) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Address1` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Address2` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `City` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `State` char(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Zip` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Country` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Start Date` date NOT NULL,
  `Expiration Date` date NOT NULL,
  `Modification Date` date NOT NULL,
  `ID Checked` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'NO',
  `Newsletter` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'YES',
  `Volunteer` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `Mailinglist` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'YES',
  `Membership Pin` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Source` enum('Paper','Online','Admin','Other') NOT NULL DEFAULT 'Online',
  `Status` enum('Active','Expired','Life-Member') NOT NULL DEFAULT 'Active',
  `editedby` char(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin PACK_KEYS=0;

-- --------------------------------------------------------

--
-- Table structure for table `MembersTemp`
--

CREATE TABLE `MembersTemp` (
  `ID` int(8) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `First Name` varchar(30) DEFAULT NULL,
  `Last Name` varchar(30) DEFAULT NULL,
  `Date of Birth` varchar(10) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Scene Name` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `E-mail` varchar(50) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Phone` varchar(16) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Address1` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Address2` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `City` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `State` char(2) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Zip` varchar(5) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Country` varchar(30) CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT '',
  `Start Date` date NOT NULL,
  `Expiration Date` date NOT NULL,
  `Modification Date` date NOT NULL,
  `ID Checked` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'NO',
  `Newsletter` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'YES',
  `Volunteer` enum('YES','NO') NOT NULL DEFAULT 'NO',
  `Mailinglist` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin NOT NULL DEFAULT 'YES',
  `Membership Pin` enum('YES','NO') CHARACTER SET latin1 COLLATE latin1_bin DEFAULT NULL,
  `Source` enum('Paper','Online','Admin','Other') NOT NULL DEFAULT 'Online',
  `Status` enum('Active','Expired','Life-Member') NOT NULL DEFAULT 'Active',
  `querytype` char(25) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `newsid` int(11) UNSIGNED NOT NULL,
  `category` char(255) DEFAULT NULL,
  `subcategory` char(255) DEFAULT NULL,
  `subsubcategory` char(255) DEFAULT NULL,
  `itemdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `title` char(255) DEFAULT NULL,
  `leadin` text DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notificationid` int(11) NOT NULL,
  `notificationtype` varchar(50) DEFAULT NULL,
  `selectedregions` text DEFAULT NULL,
  `selectedchapters` text DEFAULT NULL,
  `notificationstartdate` date DEFAULT NULL,
  `notificationenddate` date DEFAULT NULL,
  `notificationtitle` varchar(255) DEFAULT NULL,
  `notificationdescription` text DEFAULT NULL,
  `notificationpostername` varchar(255) DEFAULT NULL,
  `notificationstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteeractivity`
--

CREATE TABLE `plavolunteeractivity` (
  `plavolunteeractivityid` int(11) NOT NULL,
  `plavolunteerid` int(11) NOT NULL,
  `plavolunteereventid` int(11) DEFAULT NULL,
  `plavolunteeractivitydescription` text DEFAULT NULL,
  `plavolunteeractivitymanagerfeedback` varchar(255) DEFAULT NULL,
  `plavolunteeractivitynotes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteeremaillog`
--

CREATE TABLE `plavolunteeremaillog` (
  `plavolunteeremaillogid` int(11) NOT NULL,
  `plavolunteeremaillogdate` date DEFAULT NULL,
  `plavolunteeremaillogtime` time DEFAULT NULL,
  `plavolunteerid` int(11) DEFAULT NULL,
  `plavolunteereventid` int(11) DEFAULT NULL,
  `plavolunteeremailid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteeremails`
--

CREATE TABLE `plavolunteeremails` (
  `plavolunteeremailid` int(11) NOT NULL,
  `plavolunteereventid` int(11) DEFAULT 0,
  `plavolunteeremailfrom` varchar(255) DEFAULT NULL,
  `plavolunteeremailsubject` varchar(255) DEFAULT NULL,
  `plavolunteeremailbody` text DEFAULT NULL,
  `plavolunteeremailname` varchar(255) DEFAULT NULL,
  `plavolunteeremaillink` varchar(255) DEFAULT 'https://www.kinkfest.org/forms.php?section=Volunteers&p=',
  `plavolunteeremailstatus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteereventjobs`
--

CREATE TABLE `plavolunteereventjobs` (
  `plavolunteereventjobid` int(11) NOT NULL,
  `plavolunteereventid` int(11) DEFAULT 0,
  `plavolunteerjobdescriptionid` int(11) DEFAULT 0,
  `plavolunteereventjobvolunteershiftsneeded` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteerevents`
--

CREATE TABLE `plavolunteerevents` (
  `plavolunteereventid` int(11) NOT NULL,
  `plavolunteereventname` varchar(255) DEFAULT NULL,
  `plavolunteereventstartdate` date DEFAULT NULL,
  `plavolunteereventenddate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteerjobdescriptions`
--

CREATE TABLE `plavolunteerjobdescriptions` (
  `plavolunteerjobdescriptionid` int(11) NOT NULL,
  `plavolunteerjobdescriptionname` varchar(255) DEFAULT NULL,
  `plavolunteerjobdescriptiondetails` text DEFAULT NULL,
  `plavolunteerjobdescriptionsortorder` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plavolunteers`
--

CREATE TABLE `plavolunteers` (
  `plavolunteerid` int(11) NOT NULL,
  `fullname` char(50) DEFAULT NULL,
  `scenename` char(255) DEFAULT NULL,
  `preferredname` char(255) DEFAULT NULL,
  `phone` char(25) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `tshirtsize` char(10) DEFAULT NULL,
  `pastvolunteer` char(5) DEFAULT NULL,
  `pastvolunteerduties` char(255) DEFAULT NULL,
  `firstaidtraining` char(5) DEFAULT NULL,
  `cprtraining` char(5) DEFAULT NULL,
  `aedtraining` char(5) DEFAULT NULL,
  `aslinterpreter` char(5) DEFAULT NULL,
  `dmtraining` char(5) DEFAULT NULL,
  `dmtrainingdetails` text DEFAULT NULL,
  `dmforpla` char(5) DEFAULT NULL,
  `physicallimitations` char(5) DEFAULT NULL,
  `forkliftcard` char(5) DEFAULT NULL,
  `scissorliftcard` char(5) DEFAULT NULL,
  `availablewednesday` char(255) DEFAULT NULL,
  `availablethursday` char(255) DEFAULT NULL,
  `availablefriday` char(255) DEFAULT NULL,
  `availablesaturday` char(255) DEFAULT NULL,
  `availablesunday` char(255) DEFAULT NULL,
  `availablemonday` char(255) DEFAULT NULL,
  `lift50pounds` char(5) DEFAULT NULL,
  `workshops` text DEFAULT NULL,
  `existingagreement` text DEFAULT NULL,
  `positiondesired` char(255) DEFAULT NULL,
  `currentlyregistered` char(5) DEFAULT NULL,
  `comments` text DEFAULT NULL,
  `requestingassistance` char(255) DEFAULT NULL,
  `workstudycomments` text DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT current_timestamp(),
  `status` char(50) DEFAULT NULL,
  `teamcomments` text DEFAULT NULL,
  `scholarshipgranted` char(50) DEFAULT 'none',
  `numberofhours` char(50) DEFAULT NULL,
  `accesstocomputer` char(5) DEFAULT NULL,
  `moderatorexperience` char(5) DEFAULT NULL,
  `onlinevideoexperience` char(5) DEFAULT NULL,
  `stableinternet` char(5) DEFAULT NULL,
  `privateandquietplacetowork` char(5) DEFAULT NULL,
  `comfortablegivingattendeesdirections` char(5) DEFAULT NULL,
  `abletoenforcerules` char(5) DEFAULT NULL,
  `comfortablereadingoutloud` char(5) DEFAULT NULL,
  `havemicrophoneandwebcam` char(5) DEFAULT NULL,
  `speedtestupload` char(25) DEFAULT NULL,
  `speedtestdownload` char(25) DEFAULT NULL,
  `preferredpronouns` varchar(255) DEFAULT NULL,
  `fetlifeprofile` varchar(255) DEFAULT NULL,
  `interestarea01` varchar(5) DEFAULT 'off',
  `interestarea02` varchar(5) DEFAULT 'off',
  `interestarea03` varchar(5) DEFAULT 'off',
  `interestarea04` varchar(5) DEFAULT 'off',
  `interestarea05` varchar(5) DEFAULT 'off',
  `interestarea06` varchar(5) DEFAULT 'off',
  `interestarea07` varchar(5) DEFAULT 'off',
  `interestarea08` varchar(5) DEFAULT 'off',
  `interestarea09` varchar(5) DEFAULT 'off',
  `interestarea10` varchar(5) DEFAULT 'off',
  `interestarea11` varchar(5) DEFAULT 'off',
  `interestarea12` varchar(5) DEFAULT 'off',
  `interestarea13` varchar(5) DEFAULT 'off',
  `interestarea14` varchar(5) DEFAULT 'off',
  `interestarea15` varchar(5) DEFAULT 'off',
  `interestarea16` varchar(5) DEFAULT 'off',
  `interestarea17` varchar(5) DEFAULT 'off',
  `interestarea18` varchar(5) DEFAULT 'off',
  `interestarea19` varchar(5) DEFAULT 'off',
  `interestarea20` varchar(5) DEFAULT 'off',
  `accessibilitynotes` text DEFAULT NULL,
  `flexibleforjobassignments` varchar(5) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `plamember` varchar(5) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(25) DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `questionid` int(11) NOT NULL,
  `surveyid` int(11) DEFAULT NULL,
  `sortorder` int(11) DEFAULT 1,
  `questiontype` char(50) DEFAULT NULL,
  `questiontext` text DEFAULT NULL,
  `responseoption01` char(255) DEFAULT NULL,
  `responseoption02` char(255) DEFAULT NULL,
  `responseoption03` char(255) DEFAULT NULL,
  `responseoption04` char(255) DEFAULT NULL,
  `responseoption05` char(255) DEFAULT NULL,
  `responseoption06` char(255) DEFAULT NULL,
  `responseoption07` char(255) DEFAULT NULL,
  `responseoption08` char(255) DEFAULT NULL,
  `responseoption09` char(255) DEFAULT NULL,
  `responseoption10` char(255) DEFAULT NULL,
  `responseoption11` char(255) DEFAULT NULL,
  `responseoption12` char(255) DEFAULT NULL,
  `responseoption13` char(255) DEFAULT NULL,
  `responseoption14` char(255) DEFAULT NULL,
  `responseoption15` char(255) DEFAULT NULL,
  `responseoption16` char(255) DEFAULT NULL,
  `responseoption17` char(255) DEFAULT NULL,
  `responseoption18` char(255) DEFAULT NULL,
  `responseoption19` char(255) DEFAULT NULL,
  `responseoption20` char(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveyresponses`
--

CREATE TABLE `surveyresponses` (
  `responseid` int(11) NOT NULL,
  `surveyid` int(11) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  `memberemail` char(255) DEFAULT NULL,
  `responsetext` text DEFAULT NULL,
  `responseyn` char(10) DEFAULT NULL,
  `responsenumeric` double(15,2) DEFAULT NULL,
  `memberipaddress` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `surveystructure`
--

CREATE TABLE `surveystructure` (
  `surveyid` int(11) NOT NULL,
  `surveytitle` char(255) DEFAULT NULL,
  `surveydescription` text DEFAULT NULL,
  `surveyintroduction` text DEFAULT NULL,
  `surveystartdate` date DEFAULT NULL,
  `surveyenddate` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `fullname` char(255) DEFAULT NULL,
  `username` char(255) DEFAULT NULL,
  `password` char(255) DEFAULT NULL,
  `email` char(255) DEFAULT NULL,
  `accessnews` char(5) DEFAULT 'N',
  `accessdocuments` char(5) DEFAULT 'Y',
  `usertype` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `votes`
--

CREATE TABLE `votes` (
  `voteid` int(11) NOT NULL,
  `tag` char(255) DEFAULT NULL,
  `presidentvote` char(255) DEFAULT NULL,
  `vicepresidentvote` char(255) DEFAULT NULL,
  `secretaryvote` char(255) DEFAULT NULL,
  `treasurervote` char(255) DEFAULT NULL,
  `memberatlargevote1` char(255) DEFAULT NULL,
  `memberatlargevote2` char(255) DEFAULT NULL,
  `memberatlargevote3` char(255) DEFAULT NULL,
  `memberatlargevote4` char(255) DEFAULT NULL,
  `memberatlargevote5` char(255) DEFAULT NULL,
  `memberatlargevote6` char(255) DEFAULT NULL,
  `memberatlargevote7` char(255) DEFAULT NULL,
  `votingdate` date DEFAULT NULL,
  `votingtime` time DEFAULT NULL,
  `votingipaddress` char(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ballots`
--
ALTER TABLE `ballots`
  ADD PRIMARY KEY (`ballotid`);

--
-- Indexes for table `blogitems`
--
ALTER TABLE `blogitems`
  ADD PRIMARY KEY (`itemid`);

--
-- Indexes for table `boarddocuments`
--
ALTER TABLE `boarddocuments`
  ADD PRIMARY KEY (`documentid`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
  ADD PRIMARY KEY (`calendarid`);

--
-- Indexes for table `electionusers`
--
ALTER TABLE `electionusers`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `kfaccessibilitysurvey`
--
ALTER TABLE `kfaccessibilitysurvey`
  ADD PRIMARY KEY (`kfaccessibilitysurveyid`);

--
-- Indexes for table `kfcommunityevents`
--
ALTER TABLE `kfcommunityevents`
  ADD PRIMARY KEY (`kfcommunityeventid`);

--
-- Indexes for table `kfcustomer`
--
ALTER TABLE `kfcustomer`
  ADD PRIMARY KEY (`customerid`);

--
-- Indexes for table `kfdocuments`
--
ALTER TABLE `kfdocuments`
  ADD PRIMARY KEY (`documentid`);

--
-- Indexes for table `kfeducationsettings`
--
ALTER TABLE `kfeducationsettings`
  ADD PRIMARY KEY (`educationsettingsid`);

--
-- Indexes for table `kfformvendor`
--
ALTER TABLE `kfformvendor`
  ADD PRIMARY KEY (`vendorid`);

--
-- Indexes for table `kfformvolunteer`
--
ALTER TABLE `kfformvolunteer`
  ADD PRIMARY KEY (`volunteerid`);

--
-- Indexes for table `kfgeneralschedule`
--
ALTER TABLE `kfgeneralschedule`
  ADD PRIMARY KEY (`scheduleid`);

--
-- Indexes for table `kflocations`
--
ALTER TABLE `kflocations`
  ADD PRIMARY KEY (`locationid`) USING BTREE;

--
-- Indexes for table `kfmailinglist`
--
ALTER TABLE `kfmailinglist`
  ADD PRIMARY KEY (`mailinglistid`);

--
-- Indexes for table `kfmanagers`
--
ALTER TABLE `kfmanagers`
  ADD PRIMARY KEY (`managerid`);

--
-- Indexes for table `kfpresenters`
--
ALTER TABLE `kfpresenters`
  ADD PRIMARY KEY (`presenterid`);

--
-- Indexes for table `kfproducts`
--
ALTER TABLE `kfproducts`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `kfregistrationcodes`
--
ALTER TABLE `kfregistrationcodes`
  ADD PRIMARY KEY (`registrationcodeid`);

--
-- Indexes for table `kftracks`
--
ALTER TABLE `kftracks`
  ADD PRIMARY KEY (`trackid`);

--
-- Indexes for table `kftransactions`
--
ALTER TABLE `kftransactions`
  ADD PRIMARY KEY (`transactionid`);

--
-- Indexes for table `kfusers`
--
ALTER TABLE `kfusers`
  ADD PRIMARY KEY (`kfuserid`);

--
-- Indexes for table `kfvendorsettings`
--
ALTER TABLE `kfvendorsettings`
  ADD PRIMARY KEY (`vendorsettingsid`);

--
-- Indexes for table `kfvolunteerschedule`
--
ALTER TABLE `kfvolunteerschedule`
  ADD PRIMARY KEY (`scheduleid`);

--
-- Indexes for table `kfvolunteersettings`
--
ALTER TABLE `kfvolunteersettings`
  ADD PRIMARY KEY (`volunteersettingsid`);

--
-- Indexes for table `kfworkshops`
--
ALTER TABLE `kfworkshops`
  ADD PRIMARY KEY (`workshopid`);

--
-- Indexes for table `kfworkshopschedule`
--
ALTER TABLE `kfworkshopschedule`
  ADD PRIMARY KEY (`scheduleid`);

--
-- Indexes for table `Members`
--
ALTER TABLE `Members`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `MembersTemp`
--
ALTER TABLE `MembersTemp`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`newsid`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notificationid`);

--
-- Indexes for table `plavolunteeractivity`
--
ALTER TABLE `plavolunteeractivity`
  ADD PRIMARY KEY (`plavolunteeractivityid`);

--
-- Indexes for table `plavolunteeremaillog`
--
ALTER TABLE `plavolunteeremaillog`
  ADD PRIMARY KEY (`plavolunteeremaillogid`);

--
-- Indexes for table `plavolunteeremails`
--
ALTER TABLE `plavolunteeremails`
  ADD PRIMARY KEY (`plavolunteeremailid`);

--
-- Indexes for table `plavolunteereventjobs`
--
ALTER TABLE `plavolunteereventjobs`
  ADD PRIMARY KEY (`plavolunteereventjobid`);

--
-- Indexes for table `plavolunteerevents`
--
ALTER TABLE `plavolunteerevents`
  ADD PRIMARY KEY (`plavolunteereventid`);

--
-- Indexes for table `plavolunteerjobdescriptions`
--
ALTER TABLE `plavolunteerjobdescriptions`
  ADD PRIMARY KEY (`plavolunteerjobdescriptionid`);

--
-- Indexes for table `plavolunteers`
--
ALTER TABLE `plavolunteers`
  ADD PRIMARY KEY (`plavolunteerid`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`questionid`);

--
-- Indexes for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  ADD PRIMARY KEY (`responseid`);

--
-- Indexes for table `surveystructure`
--
ALTER TABLE `surveystructure`
  ADD PRIMARY KEY (`surveyid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `votes`
--
ALTER TABLE `votes`
  ADD PRIMARY KEY (`voteid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ballots`
--
ALTER TABLE `ballots`
  MODIFY `ballotid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogitems`
--
ALTER TABLE `blogitems`
  MODIFY `itemid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `boarddocuments`
--
ALTER TABLE `boarddocuments`
  MODIFY `documentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `calendarid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `electionusers`
--
ALTER TABLE `electionusers`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfaccessibilitysurvey`
--
ALTER TABLE `kfaccessibilitysurvey`
  MODIFY `kfaccessibilitysurveyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfcommunityevents`
--
ALTER TABLE `kfcommunityevents`
  MODIFY `kfcommunityeventid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfcustomer`
--
ALTER TABLE `kfcustomer`
  MODIFY `customerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfdocuments`
--
ALTER TABLE `kfdocuments`
  MODIFY `documentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfeducationsettings`
--
ALTER TABLE `kfeducationsettings`
  MODIFY `educationsettingsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfformvendor`
--
ALTER TABLE `kfformvendor`
  MODIFY `vendorid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfformvolunteer`
--
ALTER TABLE `kfformvolunteer`
  MODIFY `volunteerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfgeneralschedule`
--
ALTER TABLE `kfgeneralschedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kflocations`
--
ALTER TABLE `kflocations`
  MODIFY `locationid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfmailinglist`
--
ALTER TABLE `kfmailinglist`
  MODIFY `mailinglistid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfmanagers`
--
ALTER TABLE `kfmanagers`
  MODIFY `managerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfpresenters`
--
ALTER TABLE `kfpresenters`
  MODIFY `presenterid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfproducts`
--
ALTER TABLE `kfproducts`
  MODIFY `productid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfregistrationcodes`
--
ALTER TABLE `kfregistrationcodes`
  MODIFY `registrationcodeid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kftracks`
--
ALTER TABLE `kftracks`
  MODIFY `trackid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kftransactions`
--
ALTER TABLE `kftransactions`
  MODIFY `transactionid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfusers`
--
ALTER TABLE `kfusers`
  MODIFY `kfuserid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfvendorsettings`
--
ALTER TABLE `kfvendorsettings`
  MODIFY `vendorsettingsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfvolunteerschedule`
--
ALTER TABLE `kfvolunteerschedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfvolunteersettings`
--
ALTER TABLE `kfvolunteersettings`
  MODIFY `volunteersettingsid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfworkshops`
--
ALTER TABLE `kfworkshops`
  MODIFY `workshopid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kfworkshopschedule`
--
ALTER TABLE `kfworkshopschedule`
  MODIFY `scheduleid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Members`
--
ALTER TABLE `Members`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MembersTemp`
--
ALTER TABLE `MembersTemp`
  MODIFY `ID` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `newsid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notificationid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteeractivity`
--
ALTER TABLE `plavolunteeractivity`
  MODIFY `plavolunteeractivityid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteeremaillog`
--
ALTER TABLE `plavolunteeremaillog`
  MODIFY `plavolunteeremaillogid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteeremails`
--
ALTER TABLE `plavolunteeremails`
  MODIFY `plavolunteeremailid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteereventjobs`
--
ALTER TABLE `plavolunteereventjobs`
  MODIFY `plavolunteereventjobid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteerevents`
--
ALTER TABLE `plavolunteerevents`
  MODIFY `plavolunteereventid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteerjobdescriptions`
--
ALTER TABLE `plavolunteerjobdescriptions`
  MODIFY `plavolunteerjobdescriptionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `plavolunteers`
--
ALTER TABLE `plavolunteers`
  MODIFY `plavolunteerid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  MODIFY `questionid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveyresponses`
--
ALTER TABLE `surveyresponses`
  MODIFY `responseid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `surveystructure`
--
ALTER TABLE `surveystructure`
  MODIFY `surveyid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `votes`
--
ALTER TABLE `votes`
  MODIFY `voteid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
