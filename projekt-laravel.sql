-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 08 Sty 2022, 13:33
-- Wersja serwera: 10.4.21-MariaDB
-- Wersja PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt-laravel`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pesel` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `employees`
--

INSERT INTO `employees` (`id`, `name`, `surname`, `email`, `pesel`, `department`, `job`, `created_at`, `updated_at`) VALUES
(1, 'Olgierd', 'Rybak', 'rybak@rybak.com', '12345678901', 'IT', 'App developer', '2022-01-08 11:09:03', '2022-01-08 11:09:03'),
(2, 'Maciej', 'Łukaszczyk', 'maciej@maciej.com', '09876543210', 'IT', 'App developer', '2022-01-08 11:09:54', '2022-01-08 11:09:54'),
(3, 'Julia', 'Pielak', 'julia@julia.com', '69041488543', 'HR', 'Chief', '2022-01-08 11:14:14', '2022-01-08 11:14:14'),
(4, 'Tomasz', 'Piec', 'piec@piec.com', '63112675272', 'HR', 'Recruiting manager', '2022-01-08 11:15:16', '2022-01-08 11:15:16'),
(5, 'Anna', 'Wanna', 'wanna@wanna.com', '99070534542', 'HR', 'HR specialist', '2022-01-08 11:16:00', '2022-01-08 11:16:00'),
(6, 'Juliusz', 'Chmielewski', 'spirydion48@gmail.com', '65061431651', 'Finances', 'Chief', '2022-01-08 11:17:56', '2022-01-08 11:17:56'),
(7, 'Aleks', 'Mróz', 'bertrand97@yahoo.com', '01302011756', 'Finances', 'Junior specialist', '2022-01-08 11:19:04', '2022-01-08 11:19:04'),
(8, 'Tadeusz', 'Mocny', 'Moc@power.com', '95011146797', 'Management', 'CEO', '2022-01-08 11:20:03', '2022-01-08 11:20:03'),
(9, 'Roman', 'Szymański', 'amabela77@yahoo.com', '83110586378', 'IT', 'Helpdesk specialist', '2022-01-08 11:21:30', '2022-01-08 11:21:30'),
(10, 'Krzysztof', 'Kajak', 'kajak@krzysztof.com', '63060951918', 'Management', 'General director', '2022-01-08 11:22:41', '2022-01-08 11:22:41'),
(11, 'Kordian', 'Wróblewski', 'arnold29@gmail.com', '84101751557', 'Production', 'Cameraman', '2022-01-08 11:24:25', '2022-01-08 11:24:25'),
(12, 'Cezary', 'Kowalski', 'arkadiusz9@hotmail.com', '00291296414', 'Production', 'Cameraman', '2022-01-08 11:25:16', '2022-01-08 11:25:16'),
(13, 'Bogumił', 'Sobczak', 'kwintyn4@hotmail.com', '85061972978', 'Production', 'Cameraman', '2022-01-08 11:26:49', '2022-01-08 11:26:49'),
(14, 'Jan', 'Wiśniewski', 'jan@jan.com', '95052385238', 'Production', 'Chief', '2022-01-08 11:27:37', '2022-01-08 11:27:37'),
(15, 'Alan', 'Brzeziński', 'mojzesz.adamczyk@hotmail.com', '98022392298', 'Production', 'Cameraman', '2022-01-08 11:29:10', '2022-01-08 11:29:10'),
(16, 'Norbert', 'Włodarczyk', 'leon.stelmach@yahoo.com', '54011182792', 'Production', 'Editor', '2022-01-08 11:29:54', '2022-01-08 11:29:54'),
(17, 'Albert', 'Błaszczyk', 'marceli10@hotmail.com', '03231049574', 'Production', 'Editor', '2022-01-08 11:30:42', '2022-01-08 11:30:42'),
(18, 'Ignacy', 'Jaworski', 'borys.majchrzak@yahoo.com', '91011088437', 'Production', 'Editor', '2022-01-08 11:31:25', '2022-01-08 11:31:25'),
(19, 'Norbert', 'Jakubowski', 'kwintyn4@hotmail.com', '02221018354', 'Production', 'Editor', '2022-01-08 11:32:11', '2022-01-08 11:32:11'),
(20, 'Anna', 'Kwiatkowska', 'emilia_zukowski49@gmail.com', '73061379383', 'Production', 'Editor', '2022-01-08 11:33:03', '2022-01-08 11:33:03');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(17, '2014_10_12_100000_create_password_resets_table', 1),
(18, '2019_08_19_000000_create_failed_jobs_table', 1),
(19, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(23, '2014_10_12_000000_create_users_table', 2),
(24, '2022_01_07_162210_create_employees_table', 2);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` enum('admin','user') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `surname`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Olgierd', 'Rybak', 'rybak@rybak.com', NULL, '$2y$10$sKg7r04.HruJwj0JjNj96.KbGScmGby8oYiasxxFDC/qohKU3EfjC', 'admin', NULL, '2022-01-08 11:01:55', '2022-01-08 11:01:55'),
(2, 'Maciej', 'Łukaszczyk', 'maciej@maciej.com', NULL, '$2y$10$XK7/Yp4unkhz/xGNlh25A.Rxxf5zAPGcvUGO.SliG2FjClT9NN5Wu', 'admin', NULL, '2022-01-08 11:03:01', '2022-01-08 11:03:01'),
(3, 'Julia', 'Pielak', 'julia@julia.com', NULL, '$2y$10$APyYS69e8cS9pgCgYIjkAOT0DHYnohsb7xgVHapdseeoNteIZITVK', 'user', NULL, '2022-01-08 11:05:58', '2022-01-08 11:05:58'),
(4, 'Tomasz', 'Piec', 'piec@piec.com', NULL, '$2y$10$HTRMcwTF8WdPBqo1G5hAou.qZkXlKYywRsTOA2S/pIGhE.cl5HS5y', 'user', NULL, '2022-01-08 11:06:45', '2022-01-08 11:06:45'),
(5, 'Anna', 'Wanna', 'wanna@wanna.com', NULL, '$2y$10$51dgIjMjLh7sVaY849RXfOUkHIMdBgjSid1efka5wz1k.jHW75Hnm', 'user', NULL, '2022-01-08 11:07:43', '2022-01-08 11:07:43');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_pesel_unique` (`pesel`);

--
-- Indeksy dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeksy dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT dla tabeli `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
