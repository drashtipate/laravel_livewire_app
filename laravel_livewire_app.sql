-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2024 at 10:46 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_livewire_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `category_id`, `author`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Web Application Development Cost: How to Save Your Budget\r\n', 1, 'Alona O.', 'front/images/blog/post-1.jpg', 'The same is true for web app development projects. There are at least eight common types of apps, plus custom applications, that may differ in features and functionalities. Additionally, new technologies constantly emerge, pushing companies to continuously innovate to be different from the competition. All of these factors affect the end price, making it challenging to provide a precise estimate for web app development. \n<br>\n<h3><b>Main Factors That Affect Web Application Development Cost</b></h3>\n\nEven if you pop into one of the largest software development companies and ask them the exact cost of your web application, they won’t be able to tell you the price without breaking your project down into detail. First, they’ll need to hear your requirements, and then they will be busy creating the blueprint for your digital venture, which will take some time before they are ready to give you a precise cost estimate.  \n<br><br>\nLet’s take a look at the factors that influence web development and which need to be taken into consideration before starting a project. \n\n', 'active', '2024-02-27 07:57:22', '2024-02-27 07:57:22'),
(2, 'How to Develop a SaaS Application: The Complete SaaS Development Guide', 1, 'Inna M. ', 'front/images/blog/post-2.jpg', '<h2><strong>Architecture Used for SaaS Software Development</strong></h2>\r\nVarious SaaS solutions can differ not only in purpose or business model but also in type, which is an important factor to consider in the process of building SaaS products. The modern software industry distinguishes between horizontal and vertical SaaS solutions, as well as multi-tenant and single-tenant architecture. Here is what all those types entail and how they differ.\r\n\r\n<h3><strong>Vertical SaaS</strong></h3>\r\nThe vertical SaaS definition says that it is unique software designed to solve the needs of an individual market. It can help with several problems. They can be used anywhere from healthcare to finance. Today, they are becoming increasingly popular, allowing for the solution of many business issues.\r\n<br><br>\r\nPractice shows that vertical companies can be more flexible and inventive as they use many AI and machine learning features. It doesn’t matter if it’s a new or old project; interest in it is growing as it can prove it can do the job it was designed to do.\r\n<h3><strong>Horizontal SaaS</strong></h3>\r\nThe horizontal SaaS definition says that this software is for many customers. It doesn’t focus on one industry, but makes products that many people cross-industry can enjoy. Typically, the clients of such organizations are people with different goals and needs, which gives access to a considerable number of potential clients.\r\n\r\n<h3><strong>Single-Tenant</strong></h3>\r\nUnder the single-tenant SaaS platform’s infrastructure, each customer uses their separate unit of the software. In that case, the data produced and stored by the user is highly secure, but a single-tenant architecture is often difficult to develop and to maintain, and its scalability opportunities are limited as well.\r\n\r\n<h3><strong>Multi-Tenant</strong></h3>\r\nMulti-tenant architecture in SaaS platform development means that users within the same group or organization use the same unit of the software, while the data they produce and access is stored and maintained separately for each user. Multi-tenant architecture is scalable and practical, as creating SaaS units becomes easier and faster. Multi-tenant architecture can include one or more databases, depending on the number of users.\r\n', 'active', '2024-01-23 07:57:22', '2024-01-23 07:57:22'),
(3, 'Empowering Retail Innovation: Our New Suite of Google Solutions', 2, 'Anna K.', 'front/images/blog/Google-news.png', '<h4>Our service suite includes</h4>\n\n<p><b>Discovery AI.</b> Elevating customer experience with personalized search results, boosting click-through rates by an average of 15%, and conversion rates by 10%.\n</p><br>\n<p><b>Vertex AI & Vision Product Search.</b> Deploying sophisticated machine learning models effortlessly, addressing critical e-commerce challenges from fraud detection to customer segmentation.</p><br><p><b>Google Data Studio.</b> Transforming data into actionable insights, optimizing performance across all retail operations.\n</p><br>\n<p><b>Generative AI & AI/ML Solutions.</b> Using the latest in AI technology to innovate and stay ahead in the competitive retail market.\n</p><br>\nWith a wealth of experience in GCP & Discovery AI, we offer a custom approach to your challenges and market ambition. Our commitment is clear through our suite of accelerators and customized solutions, designed for an effective transformation journey.\n\n', 'active', '2023-11-13 07:57:22', '2023-11-13 07:57:22'),
(4, 'AI in Banking: How Artificial Intelligence Elevates the Financial Sector', 1, 'Sasha B.', 'front/images/blog/AI-in-Banking.png\r\n', '<h2>AI in Banking and Finance: The Dual Perspective of Users and Providers\r\n</h2>\r\nRapid advances in AI guarantee that soon it will be tightly interwoven into the fabric of our financial lives. Whether you’re a regular banking customer or a finance professional, AI is reshaping the way you interact with money. \r\n<h3>for users</h3>\r\n<strong>Data-informed banking experience.</strong>Everything we do leaves a digital footprint. Every transaction, every click, tells a story.  AI helps banks and financial institutions make sense of all this information, turning overwhelming amounts of data into smart decisions.\r\n<br><br>\r\n<strong>Personalization.</strong>Gone are the days of generic banking services. AI helps to design services tailored to your financial habits and goals, making your banking experience feel, well, more “you.”\r\n<br><br>\r\n<strong>Safety and assurance.</strong> The financial world has its share of pitfalls. AI serves as a vigilant guardian, predicting challenges and safeguarding against fraudulent activities. It is used in security testing, fraud prediction and assessment of potentially malicious users. \r\n<br><br>\r\n<strong>Efficiency at its best.</strong> The endless queues at banks and the long hold times on calls? Those are gradually becoming tales of the past, thanks to AI-driven automation ensuring faster and smoother operations.\r\n\r\n', 'active', '2023-11-25 07:57:22', '2023-11-25 07:57:22'),
(5, 'How to Hire a PHP Developer Rock-Star?\r\n', 4, 'QArea Expert', 'front/images/blog/post-8.jpg\n', 'First, we have to clarify this guide is intended for companies who want to hire PHP developer professionals to work full-time, to become team leads and form teams around them. If your goal is to hire a PHP developer freelancer for a one-time job – the first three points of the guide might suffice.\r\n<br><br>\r\n<h3>A workflow for hiring a great PHP developer</h3>\r\n1. This knowledge will help you formulate position requirements for job offerings on different freelance marketplaces. Be strict but consistent – the more accurate your requirements are, the better. Use different wording for different job offerings to evaluate which proposal brings the best results.\r\n<br><br>\r\n2. Refuse low-skill candidates at once, as you are going to hire a PHP developer rock-star! Choose about 10-15 who have good portfolios and positive reviews.', 'active', '2016-12-26 07:57:22', '2023-12-26 07:57:22'),
(6, 'Why .NET development is important for your business\r\n', 4, 'QArea Expert ', 'front/images/blog/post-3.jpg', 'The Microsoft .NET framework is developed for Microsoft Windows operating systems. It is mainly a software framework that contains a great library and supports a great number of programming languages to develop applications and pages. It is possible to deploy any language to use code that is created in other languages, this phenomenon is known as language interoperability. Today .NET development is a very popular option in the field of web application development. Nevertheless, it requires Microsoft’s SDK (software development kit) for Visual Studio 2010 or .NET Framework or Windows 7 installed on your computer. Recently dot NET development has gained a strong demand among existing and new website owners who wish to get most of its features but without spending much. Actually, statistics shows a fast growth in its application amid owners of online businesses who want to boost the business by means of catchy web applications.\r\n<br><br><br>\r\n<b>There are commercial .NET Services which may be offered to Businesses:</b>\r\n<br><br>\r\n.NET custom control development\r\n<br><br>\r\nMigrating desktop and web applications to .NET\r\n<br><br>\r\n.NET Web and Desktop Application Development <br><br>\r\n.NET design and architecture evaluation\r\n<br><br>\r\nDeveloping web services utilizing the SOAP toolkit and the .NET Framework\r\n<br><br>\r\nMigration of application from .NET\r\n<br><br>\r\n.NET Software Product Development\r\n<br><br>\r\nApplication development and .NET Architecture\r\n<br><br>\r\nWeb Services based .NET Application development\r\n', 'active', '2016-12-26 07:57:22', '2023-12-26 07:57:22'),
(7, 'Why start loving ASP.NET web development?\r\n', 4, 'QArea Team', 'front/images/blog/aspnet-web.jpg', '<h2>Types of ASP.NET web development</h2>\r\nMicrosoft team made sure that you are capable of choosing the most suitable kind of ASP.NET development for each project, by creating three types of this framework: MVC, Web Forms, and Web Pages.\r\n\r\n<h4>MVC<h4>\r\nThis framework is one of the greatest ASP.NET advantages. It is used by almost 15k websites all over the world. The pattern Model – Views – Controllers makes it easier for engineers to develop a product of good quality, saving time on managing the overall complexity of the workflow. This is a great choice for serious projects since developers are able to customize the MVC patterns and behavior.\r\n\r\n<h4>Web Forms<h4>\r\nWeb Forms are usually chosen for building small and fast applications. They are targeted on the WYSIWYG model for rapid application development. As another advantage of ASP.NET, the framework gives programmers more control. In fact, it demands less amount of actual coding than MVC may do for the same type of project.\r\n\r\n<h4>Web pages<h4>\r\nBeing one of the simplest frameworks of ASP.NET development, this type allows young professionals to practice PHP along with HTML. Web Pages is perfect for RAD (Rapid Application Development), as well as Web Forms. It also requires less coding and can be easily maintained.', 'inactive', '2016-12-26 07:57:22', '2023-12-26 07:57:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Development', 'development', 'active', '2024-01-19 07:51:04', '2024-01-19 07:51:04'),
(2, 'CompanyNews', 'companynews', 'active', '2024-02-05 07:51:51', '2024-02-05 07:51:51'),
(3, 'Fashion', 'fashion', 'active', '2024-02-26 07:52:12', '2024-02-27 07:52:12'),
(4, 'IT Blog', 'itblog', 'active', '2024-02-26 07:52:12', '2024-02-27 07:52:12');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `contact_name` varchar(255) NOT NULL,
  `contact_email` varchar(255) NOT NULL,
  `contact_subject` varchar(255) DEFAULT NULL,
  `contact_message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`, `created_at`, `updated_at`) VALUES
(1, 'Krishna', 'krishna12@gmail.com', 'Web Developer', 'I want job..', '2024-03-11 04:56:21', '2024-03-11 04:56:21'),
(3, 'pinky', 'pinky@gmail.com', 'Android Developer', 'i am fresher. i want job in android developer....', '2024-03-11 05:11:44', '2024-03-11 05:11:44'),
(5, 'mohit diyora', 'mohit@gmail.com', 'For finding job as freshers ', 'I am finding job in unity as a freshers.', '2024-03-11 05:24:29', '2024-03-11 05:24:29'),
(6, 'D.V Patel', 'd@gmail.com', 'php/laravel developer', 'I am finding job in php/laravel as a freshers.', '2024-03-11 05:50:06', '2024-03-11 05:50:06'),
(8, 'akshita', 'akshu@gmail.com', 'Unity Developer', 'i m 3 years experience in unity so i want to job in modeling in unity ', '2024-03-11 06:10:45', '2024-03-11 06:10:45'),
(15, 'dhruv', 'dhruv@gmail.com', 'For finding job as freshers ', 'dfdsffdf', '2024-03-11 23:58:31', '2024-03-11 23:58:31'),
(18, 'hinal ', 'hinu@gmail.com', 'Node.js Developer', 'i am fresher.. and i want to job node.js..', '2024-03-12 00:02:11', '2024-03-12 00:02:11'),
(25, 'cipherhex', 'cipherhex910@gmail.com', 'data analytics', 'remote work in data science and analytics', '2024-03-12 03:42:00', '2024-03-12 03:42:00');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text DEFAULT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `image`, `question`, `answer`, `status`, `created_at`, `updated_at`) VALUES
(1, '\nfront/images/mark.png\n', 'What type of software do you test?', 'Our range of testing services covers web applications, mobile applications, websites, corporate ERP and CRM systems, and more.', 'active', '2024-03-01 10:23:29', '2024-03-01 10:23:29'),
(2, '\nfront/images/mark.png\n', 'Do you provide testing documentation?', 'We provide complete testing documentation (including matrices, user stories, etc.). We’re confident that should you choose to change a vendor, you should be able to do so without any trouble. We’re also equally confident that you’ll be more than happy with the testing and QA services we provide.', 'active', '2024-03-01 10:22:19', '2024-03-01 10:22:19'),
(3, '\nfront/images/mark.png\n', 'What tools and methodologies do you use?', 'We prefer to match our testing methodology to match your development team. We prefer to work with Agile or Lean (depending on the size of your project), but we also practice Waterfall, Spiral, V-Model, Unified Process, etc. You name it — we’ve done it.\n<br><br>\nRegardless of methodology, we apply industry best-practices and use emulators and physical devices to test your software. If you’re looking for a list of tools and testing types — here it is! Selenium, Appium, Loadrunner, Jmeter, Jenkins, TestLink, Mantis, Postman, Firebug/Firepath, Bugzilla, RazorSQL, PhantomJS, UI Automator. Methodologies – Unit Testing, Integration Testing, System Testing, Performance Testing.', 'active', '2024-03-01 10:22:19', '2024-03-01 10:22:19'),
(4, 'front/images/mark.png\r\n', 'What if we already have an internal IT department?', 'No problem! We offer scalable solutions that can be tailored to meet your specific needs. Whether you need a full package of managed IT services and consulting, security solutions or service desk support, NanoSoft makes it simple with an affordable and customized flat rate service plan.\r\n\r\n', 'active', '2024-03-04 10:22:19', '2024-03-01 10:22:19'),
(5, 'front/images/mark.png\r\n', 'What does having Managed IT Services cost?', 'Our service model uses a fixed monthly fee, which is based on the size and complexity of your particular network. Once contracted, your Managed IT Services will cover maintenance and support for every component of your network, providing you with peace of mind and the ability to accurately forecast your IT maintenance costs.', 'active', '2024-03-04 10:22:19', '2024-03-01 10:22:19'),
(6, 'front/images/mark.png\r\n', 'How long does it take to build a website?', 'Since 2007 we have been a visionary and a reliable software engineering partner for world-class brands. We are a boutique digital transformation consultancy.', 'active', '2024-03-04 10:22:19', '2024-03-01 10:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `in_url` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `designation`, `fb_url`, `tw_url`, `in_url`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Johan Dave', 'Mobile Developer', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'front/images/testimonials/team-1.jpg', 1, NULL, NULL),
(2, 'Mohini Singh', 'Web Developer', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'front/images/testimonials/team-2.jpg', 1, NULL, NULL),
(3, 'Chriss Moore', 'Managing Director\n', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'front/images/testimonials/team-3.jpg', 1, '2024-03-05 12:02:33', NULL),
(4, 'Nick Davis', 'Chief Technology Officer', 'https://www.facebook.com/', 'https://twitter.com/', 'https://www.instagram.com/', 'front/images/testimonials/team-4.jpg', 1, '2024-03-09 12:02:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(6, '2024_02_26_045358_create_members_table', 2),
(8, '2024_02_26_102638_create_categories_table', 4),
(9, '2024_02_26_112919_create_categories_table', 5),
(11, '2014_10_12_000000_create_users_table', 6),
(12, '2014_10_12_100000_create_password_resets_table', 6),
(13, '2019_08_19_000000_create_failed_jobs_table', 6),
(14, '2019_12_14_000001_create_personal_access_tokens_table', 6),
(15, '2024_02_24_063000_create_services_table', 6),
(16, '2024_02_26_054632_create_members_table', 6),
(17, '2024_02_26_115321_create_categories_table', 6),
(18, '2024_02_26_124145_create_articles_table', 7),
(19, '2024_02_29_123307_create_faqs_table', 8),
(20, '2024_02_29_124413_create_pages_table', 9),
(21, '2024_03_01_101533_create_faqs_table', 10),
(22, '2024_03_11_091257_create_contacts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `content` text NOT NULL,
  `status` enum('active','inactive') NOT NULL DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `image`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About Us', 'front/images/about/about-11.jpg', '<h2>Innovating with a<br> Digital Mindset</h2>\r\n<br>\r\n<h5>We are a boutique digital transformation consultancy and<br> development company.</h5>\r\n<br><p>Since 2007 we have been a visionary and a reliable software engineering partner for world-class brands. We are a boutique digital transformation consultancy and software development company that provides cutting edge engineering solutions.</p>\r\n\r\n', 'active', '2024-03-04 09:38:24', NULL),
(2, 'Contact Us', NULL, '', 'active', '2024-03-04 09:38:54', NULL),
(3, 'Terms & Conditions', NULL, '', 'active', '2024-03-04 09:39:17', NULL),
(4, 'Privacy Policy', NULL, '', 'active', '2024-03-04 09:39:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `icon_class` varchar(255) DEFAULT NULL,
  `short_desc` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `icon_class`, `short_desc`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Digital Services', 'fas fa-laptop-code ps-2', 'We help clients clarify their vision for business success, follow a design-led approach to product & definition.', 'Digital services are a business construct, defined by a set of processes and flows that combine in a way that allows consumers to engage with some entity, like a business. “Online shopping” is a digital service, and thus the experience you have while engaged with that service is what becomes the digital experience.\r\n that digital services will grow to dominate global GDP whereby services such as mass customization , ecommerce, digital media  and virtual reality will increasingly compete with traditional physical products and labor intensive services . The following are common examples of digital services.  ', 'front/images/services/services_1.jpg', 1, '2024-02-26 12:18:38', '2024-02-26 12:18:38'),
(2, 'Logo Design', 'fas fa-draw-polygon ps-2', 'Your logo design brief tells designers what kind of logo to design, with all the necessary details and background information.', 'Your logo design brief tells designers what kind of logo to design, with all the necessary details and background information.', 'front/images/services/services_2.jpg', 1, '2024-02-26 12:18:53', '2024-02-26 12:18:53'),
(3, 'Web Development', 'fas fa-globe ps-2', 'Reach out to an even wider audience with a custom, widely accessible web app.\n\n', 'A web designer is responsible for creating the design and layout of a website or web pages.', 'front/images/services/services_3.jpg', 1, '2024-02-26 12:19:02', '2024-02-26 12:19:02'),
(4, 'UI/UX Design', 'fas fa-edit ps-2', 'A UI/UX designer is critical to a product\'s user experience. As previously stated, UI and UX are distinct concepts.', '<h5>Web app design</h5>\nCreative and understandable website design significantly increases the chances of a visitor taking the target action we need. There must be no extra distractions that will influence the website navigation. The design’s role is to create a likable atmosphere for the selected product or service and encourage users to make a choice.\n<br><br>\n<h5>Mobile app design</h5>\nMobile UX design defines the correct user flow of the app. How many actions will the user take to reach what they want? What additional features will they face on this path (read reviews, specifications, check photos, rate, watch ads)? How to combine all this and not confuse the user? Our team can answer these questions.\n\n', 'front/images/services/services_4.jpg', 1, '2024-02-26 12:19:02', '2024-02-26 12:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_category_id_foreign` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
