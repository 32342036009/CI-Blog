-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2018 at 02:13 PM
-- Server version: 5.6.14
-- PHP Version: 5.5.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=68 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `body`, `created_at`) VALUES
(66, 'Lorem Ipsum क्या है?', '', '<p><strong>Lorem Ipsum</strong>&nbsp;छपाई और अक्षर योजन उद्योग का एक साधारण डमी पाठ है. Lorem Ipsum सन १५०० के बाद से अभी तक इस उद्योग का मानक डमी पाठ मन गया, जब एक अज्ञात मुद्रक ने नमूना लेकर एक नमूना किताब बनाई. यह न केवल पाँच सदियों से जीवित रहा बल्कि इसने इलेक्ट्रॉनिक मीडिया में छलांग लगाने के बाद भी मूलतः अपरिवर्तित रहा. यह 1960 के दशक में Letraset Lorem Ipsum अंश युक्त पत्र के रिलीज के साथ लोकप्रिय हुआ, और हाल ही में Aldus PageMaker Lorem Ipsum के संस्करणों सहित तरह डेस्कटॉप प्रकाशन सॉफ्टवेयर के साथ अधिक प्रचलित हुआ.</p>\r\n', '2018-04-25 11:30:36'),
(67, 'मुझे कुछ भाग कहा मिल सकता है?', 'मझ-कछ-भग-कह-मल-सकत-ह', '<p>Lorem Ipsum के अंश कई रूप में उपलब्ध हैं, लेकिन बहुमत को किसी अन्य रूप में परिवर्तन का सामना करना पड़ा है, हास्य डालना या क्रमरहित शब्द , जो तनिक भी विश्वसनीय नहीं लग रहे हो. यदि आप Lorem Ipsum के एक अनुच्छेद का उपयोग करने जा रहे हैं, तो आप को यकीन दिला दें कि पाठ के मध्य में वहाँ कुछ भी शर्मनाक छिपा हुआ नहीं है. इंटरनेट पर सभी Lorem Ipsum जनरेटर पूर्वनिर्धारित मात्रा में अनुच्छेद को दोहराने कि वजह से इंटरनेट पर सबसे विश्वसनीय जनरेटर होने के लिए जाने जाते हैं. यह एक 200 से भी अधिक लैटिन शब्दों के शब्दकोश का उपयोग करता है , जो एक मुट्ठी भर मॉडल वाक्य संरचना के साथ संयुक्त होकर Lorem Ipsum उत्पन्न करता है जो उचित भी लगता है. इसलिए उत्पन्न Lorem Ipsum हमेशा पुनरावृत्ति, हास्य, या गैर विशेषता शब्दों आदि से मुक्त होता है.</p>\r\n', '2018-04-25 12:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hindi`
--

CREATE TABLE IF NOT EXISTS `tbl_hindi` (
  `data` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_hindi`
--

INSERT INTO `tbl_hindi` (`data`) VALUES
('कंप्यूटर');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
