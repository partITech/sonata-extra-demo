-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : db:3306
-- Généré le : ven. 18 oct. 2024 à 07:20
-- Version du serveur : 11.3.2-MariaDB-1:11.3.2+maria~ubu2204
-- Version de PHP : 8.2.8
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sonata-extra-demo`
--

-- --------------------------------------------------------

--
-- Structure de la table `acl_classes`
--

CREATE TABLE `acl_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_type` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_entries`
--

CREATE TABLE `acl_entries` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `field_name` varchar(50) DEFAULT NULL,
  `ace_order` smallint(5) UNSIGNED NOT NULL,
  `security_identity_id` int(10) UNSIGNED NOT NULL,
  `mask` int(11) NOT NULL,
  `granting` tinyint(1) NOT NULL,
  `granting_strategy` varchar(30) NOT NULL,
  `audit_success` tinyint(1) NOT NULL,
  `audit_failure` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_object_identities`
--

CREATE TABLE `acl_object_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `object_identifier` varchar(100) NOT NULL,
  `parent_object_identity_id` int(10) UNSIGNED DEFAULT NULL,
  `entries_inheriting` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_object_identity_ancestors`
--

CREATE TABLE `acl_object_identity_ancestors` (
  `object_identity_id` int(10) UNSIGNED NOT NULL,
  `ancestor_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `acl_security_identities`
--

CREATE TABLE `acl_security_identities` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(200) NOT NULL,
  `username` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classification__category`
--

CREATE TABLE `classification__category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `featured_image__media_id` int(11) DEFAULT NULL,
  `seo_og_image__media_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` longtext DEFAULT NULL,
  `seo_og_title` varchar(255) DEFAULT NULL,
  `seo_og_description` longtext DEFAULT NULL,
  `translation_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `classification__collection`
--

CREATE TABLE `classification__collection` (
  `id` int(11) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `classification__context`
--

CREATE TABLE `classification__context` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `classification__tag`
--

CREATE TABLE `classification__tag` (
  `id` int(11) NOT NULL,
  `context` varchar(255) DEFAULT NULL,
  `featured_image__media_id` int(11) DEFAULT NULL,
  `seo_og_image__media_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` longtext DEFAULT NULL,
  `seo_og_title` varchar(255) DEFAULT NULL,
  `seo_og_description` longtext DEFAULT NULL,
  `translation_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;



--
-- Structure de la table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `additional_information` longtext DEFAULT NULL,
  `send_me_acopy` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `many_to_many__article_category`
--

CREATE TABLE `many_to_many__article_category` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `many_to_many__article_category_revision`
--

CREATE TABLE `many_to_many__article_category_revision` (
  `article_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `many_to_many__article_tag`
--

CREATE TABLE `many_to_many__article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `many_to_many__article_tag_revision`
--

CREATE TABLE `many_to_many__article_tag_revision` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;



-- --------------------------------------------------------

--
-- Structure de la table `media__gallery`
--

CREATE TABLE `media__gallery` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `context` varchar(64) NOT NULL,
  `default_format` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media__gallery_item`
--

CREATE TABLE `media__gallery_item` (
  `id` int(11) NOT NULL,
  `gallery_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `media__media`
--

CREATE TABLE `media__media` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `enabled` tinyint(1) NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `provider_status` int(11) NOT NULL,
  `provider_reference` varchar(255) NOT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`provider_metadata`)),
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `length` decimal(10,0) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `content_size` int(11) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `author_name` varchar(255) DEFAULT NULL,
  `context` varchar(64) DEFAULT NULL,
  `cdn_is_flushable` tinyint(1) NOT NULL,
  `cdn_flush_identifier` varchar(64) DEFAULT NULL,
  `cdn_flush_at` datetime DEFAULT NULL,
  `cdn_status` int(11) DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `page__block`
--

CREATE TABLE `page__block` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `settings` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`settings`)),
  `enabled` tinyint(1) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `page__page`
--

CREATE TABLE `page__page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `page_alias` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `decorate` tinyint(1) NOT NULL,
  `edited` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` longtext DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `custom_url` longtext DEFAULT NULL,
  `request_method` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_keyword` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `javascript` longtext DEFAULT NULL,
  `stylesheet` longtext DEFAULT NULL,
  `raw_headers` longtext DEFAULT NULL,
  `template` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `media__media_id` int(11) DEFAULT NULL,
  `translation_from_id` int(11) DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `page__site`
--

CREATE TABLE `page__site` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `relative_path` varchar(255) DEFAULT NULL,
  `host` varchar(255) NOT NULL,
  `enabled_from` datetime DEFAULT NULL,
  `enabled_to` datetime DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `locale` varchar(7) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Structure de la table `page__snapshot`
--

CREATE TABLE `page__snapshot` (
  `id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `route_name` varchar(255) NOT NULL,
  `page_alias` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `position` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `decorate` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` longtext DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`content`)),
  `publication_date_start` datetime DEFAULT NULL,
  `publication_date_end` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
--
-- Structure de la table `sonata_extra__admin_activity_change_log`
--

CREATE TABLE `sonata_extra__admin_activity_change_log` (
  `id` int(11) NOT NULL,
  `admin_activity_log_id` int(11) DEFAULT NULL,
  `entity_class` varchar(255) NOT NULL,
  `entity_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) NOT NULL,
  `old_value` longtext DEFAULT NULL,
  `new_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `sonata_extra__admin_activity_log`
--

CREATE TABLE `sonata_extra__admin_activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  `action_type` varchar(255) NOT NULL,
  `resource` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `data` longtext DEFAULT NULL,
  `approval` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__article`
--

CREATE TABLE `sonata_extra__article` (
  `id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `featured_image__media_id` int(11) DEFAULT NULL,
  `seo_og_image__media_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `excerpt` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `type_editor` varchar(50) NOT NULL DEFAULT 'markdown',
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` longtext DEFAULT NULL,
  `seo_og_title` varchar(255) DEFAULT NULL,
  `seo_og_description` longtext DEFAULT NULL,
  `translation_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__article_revision`
--

CREATE TABLE `sonata_extra__article_revision` (
  `id` int(11) NOT NULL,
  `article_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `featured_image__media_id` int(11) DEFAULT NULL,
  `seo_og_image__media_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `type_editor` varchar(50) NOT NULL DEFAULT 'gutenberg',
  `revision_date` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` longtext DEFAULT NULL,
  `seo_og_title` varchar(255) DEFAULT NULL,
  `seo_og_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;


--
-- Structure de la table `sonata_extra__editor`
--

CREATE TABLE `sonata_extra__editor` (
  `id` int(11) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `featured_image__media_id` int(11) DEFAULT NULL,
  `site_id` int(11) DEFAULT NULL,
  `content` longtext NOT NULL,
  `title` varchar(255) NOT NULL,
  `published_at` datetime DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `type_editor` varchar(50) NOT NULL DEFAULT 'gutenberg',
  `translation_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__editor_revision`
--

CREATE TABLE `sonata_extra__editor_revision` (
  `id` int(11) NOT NULL,
  `editor_id` int(11) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL,
  `featured_image__media_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext DEFAULT NULL,
  `status` varchar(50) NOT NULL,
  `type_editor` varchar(50) NOT NULL DEFAULT 'gutenberg',
  `revision_date` datetime DEFAULT NULL,
  `published_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__faq_category`
--

CREATE TABLE `sonata_extra__faq_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__faq_question`
--

CREATE TABLE `sonata_extra__faq_question` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `question` longtext NOT NULL,
  `answer` longtext NOT NULL,
  `position` int(11) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__menu`
--

CREATE TABLE `sonata_extra__menu` (
  `id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `translation_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__menu_item`
--

CREATE TABLE `sonata_extra__menu_item` (
  `id` int(11) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `menu` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `class_attribute` varchar(255) DEFAULT NULL,
  `position` smallint(5) UNSIGNED DEFAULT NULL,
  `target` tinyint(1) DEFAULT 0,
  `enabled` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__redirection`
--

CREATE TABLE `sonata_extra__redirection` (
  `id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `source` varchar(255) NOT NULL,
  `source_host` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `status_code` int(11) NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__sec_firewall_rule`
--

CREATE TABLE `sonata_extra__sec_firewall_rule` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `source` varchar(255) NOT NULL,
  `parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`parameters`)),
  `match_mode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__sec_ip_rule`
--

CREATE TABLE `sonata_extra__sec_ip_rule` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__sec_stop_word`
--

CREATE TABLE `sonata_extra__sec_stop_word` (
  `id` int(11) NOT NULL,
  `word` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__slider`
--

CREATE TABLE `sonata_extra__slider` (
  `id` int(11) NOT NULL,
  `site_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `ordre` int(11) NOT NULL DEFAULT 0,
  `translation_from_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sonata_extra__slider_slides`
--

CREATE TABLE `sonata_extra__slider_slides` (
  `id` int(11) NOT NULL,
  `slider_id` int(11) NOT NULL,
  `media__media_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `subtitle` varchar(255) DEFAULT NULL,
  `btn_label` varchar(255) DEFAULT NULL,
  `target` varchar(45) DEFAULT NULL,
  `ordre` int(11) NOT NULL DEFAULT 0,
  `active` tinyint(1) DEFAULT NULL,
  `url` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user__user`
--

CREATE TABLE `user__user` (
  `username` varchar(180) NOT NULL,
  `username_canonical` varchar(180) NOT NULL,
  `email` varchar(180) NOT NULL,
  `email_canonical` varchar(180) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `confirmation_token` varchar(180) DEFAULT NULL,
  `password_requested_at` datetime DEFAULT NULL,
  `roles` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL COMMENT '(DC2Type:json)' CHECK (json_valid(`roles`)),
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `acl_classes`
--
ALTER TABLE `acl_classes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_69DD750638A36066` (`class_type`);

--
-- Index pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_46C8B806EA000B103D9AB4A64DEF17BCE4289BF4` (`class_id`,`object_identity_id`,`field_name`,`ace_order`),
  ADD KEY `IDX_46C8B806EA000B103D9AB4A6DF9183C9` (`class_id`,`object_identity_id`,`security_identity_id`),
  ADD KEY `IDX_46C8B806EA000B10` (`class_id`),
  ADD KEY `IDX_46C8B8063D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_46C8B806DF9183C9` (`security_identity_id`);

--
-- Index pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9407E5494B12AD6EA000B10` (`object_identifier`,`class_id`),
  ADD KEY `IDX_9407E54977FA751A` (`parent_object_identity_id`);

--
-- Index pour la table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD PRIMARY KEY (`object_identity_id`,`ancestor_id`),
  ADD KEY `IDX_825DE2993D9AB4A6` (`object_identity_id`),
  ADD KEY `IDX_825DE299C671CEA1` (`ancestor_id`);

--
-- Index pour la table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8835EE78772E836AF85E0677` (`identifier`,`username`);

--
-- Index pour la table `classification__category`
--
ALTER TABLE `classification__category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_43629B36727ACA70` (`parent_id`),
  ADD KEY `IDX_43629B36E25D857E` (`context`),
  ADD KEY `IDX_43629B365E687384` (`featured_image__media_id`),
  ADD KEY `IDX_43629B36154D61BC` (`seo_og_image__media_id`),
  ADD KEY `IDX_43629B36F6BD1646` (`site_id`);

--
-- Index pour la table `classification__collection`
--
ALTER TABLE `classification__collection`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_collection` (`slug`,`context`),
  ADD KEY `IDX_A406B56AE25D857E` (`context`);

--
-- Index pour la table `classification__context`
--
ALTER TABLE `classification__context`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `classification__tag`
--
ALTER TABLE `classification__tag`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag_context` (`slug`,`context`,`site_id`),
  ADD KEY `IDX_CA57A1C7E25D857E` (`context`),
  ADD KEY `IDX_CA57A1C75E687384` (`featured_image__media_id`),
  ADD KEY `IDX_CA57A1C7154D61BC` (`seo_og_image__media_id`),
  ADD KEY `IDX_CA57A1C7F6BD1646` (`site_id`);

--
-- Index pour la table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `many_to_many__article_category`
--
ALTER TABLE `many_to_many__article_category`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_FF13D7DC7294869C` (`article_id`),
  ADD KEY `IDX_FF13D7DC12469DE2` (`category_id`);

--
-- Index pour la table `many_to_many__article_category_revision`
--
ALTER TABLE `many_to_many__article_category_revision`
  ADD PRIMARY KEY (`article_id`,`category_id`),
  ADD KEY `IDX_FBAB01B7294869C` (`article_id`),
  ADD KEY `IDX_FBAB01B12469DE2` (`category_id`);

--
-- Index pour la table `many_to_many__article_tag`
--
ALTER TABLE `many_to_many__article_tag`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `IDX_D9B071747294869C` (`article_id`),
  ADD KEY `IDX_D9B07174BAD26311` (`tag_id`);

--
-- Index pour la table `many_to_many__article_tag_revision`
--
ALTER TABLE `many_to_many__article_tag_revision`
  ADD PRIMARY KEY (`article_id`,`tag_id`),
  ADD KEY `IDX_9B52513C7294869C` (`article_id`),
  ADD KEY `IDX_9B52513CBAD26311` (`tag_id`);

--
-- Index pour la table `media__gallery`
--
ALTER TABLE `media__gallery`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `media__gallery_item`
--
ALTER TABLE `media__gallery_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3238519A4E7AF8F` (`gallery_id`),
  ADD KEY `IDX_3238519AEA9FDD75` (`media_id`);

--
-- Index pour la table `media__media`
--
ALTER TABLE `media__media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5C6DD74E12469DE2` (`category_id`);

--
-- Index pour la table `page__block`
--
ALTER TABLE `page__block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_66F58DA0727ACA70` (`parent_id`),
  ADD KEY `IDX_66F58DA0C4663E4` (`page_id`);

--
-- Index pour la table `page__page`
--
ALTER TABLE `page__page`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2FAE39EDF6BD1646` (`site_id`),
  ADD KEY `IDX_2FAE39ED727ACA70` (`parent_id`),
  ADD KEY `IDX_2FAE39EDE13F2B9B` (`media__media_id`);

--
-- Index pour la table `page__site`
--
ALTER TABLE `page__site`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `page__snapshot`
--
ALTER TABLE `page__snapshot`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_3963EF9AF6BD1646` (`site_id`),
  ADD KEY `IDX_3963EF9AC4663E4` (`page_id`),
  ADD KEY `idx_snapshot_dates_enabled` (`publication_date_start`,`publication_date_end`,`enabled`);

--
-- Index pour la table `sonata_extra__admin_activity_change_log`
--
ALTER TABLE `sonata_extra__admin_activity_change_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B6F7739784C15161` (`admin_activity_log_id`);

--
-- Index pour la table `sonata_extra__admin_activity_log`
--
ALTER TABLE `sonata_extra__admin_activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C3E5C3AEA76ED395` (`user_id`),
  ADD KEY `token_idx` (`token`);

--
-- Index pour la table `sonata_extra__article`
--
ALTER TABLE `sonata_extra__article`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_5B55300989D9B62` (`slug`),
  ADD KEY `IDX_5B55300F675F31B` (`author_id`),
  ADD KEY `IDX_5B553005E687384` (`featured_image__media_id`),
  ADD KEY `IDX_5B55300154D61BC` (`seo_og_image__media_id`),
  ADD KEY `IDX_5B55300F6BD1646` (`site_id`);
ALTER TABLE `sonata_extra__article` ADD FULLTEXT KEY `content_fulltext_idx` (`content`);

--
-- Index pour la table `sonata_extra__article_revision`
--
ALTER TABLE `sonata_extra__article_revision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BA8A553D7294869C` (`article_id`),
  ADD KEY `IDX_BA8A553DF675F31B` (`author_id`),
  ADD KEY `IDX_BA8A553D5E687384` (`featured_image__media_id`),
  ADD KEY `IDX_BA8A553D154D61BC` (`seo_og_image__media_id`);

--
-- Index pour la table `sonata_extra__editor`
--
ALTER TABLE `sonata_extra__editor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2E688EBEF675F31B` (`author_id`),
  ADD KEY `IDX_2E688EBE5E687384` (`featured_image__media_id`),
  ADD KEY `IDX_2E688EBEF6BD1646` (`site_id`);

--
-- Index pour la table `sonata_extra__editor_revision`
--
ALTER TABLE `sonata_extra__editor_revision`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_4BBA8F6995AC4C` (`editor_id`),
  ADD KEY `IDX_4BBA8FF675F31B` (`author_id`),
  ADD KEY `IDX_4BBA8F5E687384` (`featured_image__media_id`);

--
-- Index pour la table `sonata_extra__faq_category`
--
ALTER TABLE `sonata_extra__faq_category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sonata_extra__faq_question`
--
ALTER TABLE `sonata_extra__faq_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C0682FB112469DE2` (`category_id`);

--
-- Index pour la table `sonata_extra__menu`
--
ALTER TABLE `sonata_extra__menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_CCE146A7F6BD1646` (`site_id`);

--
-- Index pour la table `sonata_extra__menu_item`
--
ALTER TABLE `sonata_extra__menu_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F12933B73D8E604F` (`parent`),
  ADD KEY `IDX_F12933B77D053A93` (`menu`);

--
-- Index pour la table `sonata_extra__redirection`
--
ALTER TABLE `sonata_extra__redirection`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sonata_extra__sec_firewall_rule`
--
ALTER TABLE `sonata_extra__sec_firewall_rule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sonata_extra__sec_ip_rule`
--
ALTER TABLE `sonata_extra__sec_ip_rule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sonata_extra__sec_stop_word`
--
ALTER TABLE `sonata_extra__sec_stop_word`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sonata_extra__slider`
--
ALTER TABLE `sonata_extra__slider`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_2D5E6F03F6BD1646` (`site_id`);

--
-- Index pour la table `sonata_extra__slider_slides`
--
ALTER TABLE `sonata_extra__slider_slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_5CC266492CCC9638` (`slider_id`),
  ADD KEY `IDX_5CC26649E13F2B9B` (`media__media_id`);

--
-- Index pour la table `user__user`
--
ALTER TABLE `user__user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_32745D0A92FC23A8` (`username_canonical`),
  ADD UNIQUE KEY `UNIQ_32745D0AA0D96FBF` (`email_canonical`),
  ADD UNIQUE KEY `UNIQ_32745D0AC05FB297` (`confirmation_token`);


--
-- AUTO_INCREMENT pour la table `acl_classes`
--
ALTER TABLE `acl_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `acl_security_identities`
--
ALTER TABLE `acl_security_identities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classification__category`
--
ALTER TABLE `classification__category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `classification__collection`
--
ALTER TABLE `classification__collection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `classification__tag`
--
ALTER TABLE `classification__tag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `media__gallery`
--
ALTER TABLE `media__gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `media__gallery_item`
--
ALTER TABLE `media__gallery_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `media__media`
--
ALTER TABLE `media__media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `page__block`
--
ALTER TABLE `page__block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `page__page`
--
ALTER TABLE `page__page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `page__site`
--
ALTER TABLE `page__site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `page__snapshot`
--
ALTER TABLE `page__snapshot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__admin_activity_change_log`
--
ALTER TABLE `sonata_extra__admin_activity_change_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__admin_activity_log`
--
ALTER TABLE `sonata_extra__admin_activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__article`
--
ALTER TABLE `sonata_extra__article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__article_revision`
--
ALTER TABLE `sonata_extra__article_revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__editor`
--
ALTER TABLE `sonata_extra__editor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__editor_revision`
--
ALTER TABLE `sonata_extra__editor_revision`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__faq_category`
--
ALTER TABLE `sonata_extra__faq_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__faq_question`
--
ALTER TABLE `sonata_extra__faq_question`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__menu`
--
ALTER TABLE `sonata_extra__menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__menu_item`
--
ALTER TABLE `sonata_extra__menu_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__redirection`
--
ALTER TABLE `sonata_extra__redirection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__sec_firewall_rule`
--
ALTER TABLE `sonata_extra__sec_firewall_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__sec_ip_rule`
--
ALTER TABLE `sonata_extra__sec_ip_rule`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__sec_stop_word`
--
ALTER TABLE `sonata_extra__sec_stop_word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__slider`
--
ALTER TABLE `sonata_extra__slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sonata_extra__slider_slides`
--
ALTER TABLE `sonata_extra__slider_slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user__user`
--
ALTER TABLE `user__user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `acl_entries`
--
ALTER TABLE `acl_entries`
  ADD CONSTRAINT `FK_46C8B8063D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806DF9183C9` FOREIGN KEY (`security_identity_id`) REFERENCES `acl_security_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_46C8B806EA000B10` FOREIGN KEY (`class_id`) REFERENCES `acl_classes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `acl_object_identities`
--
ALTER TABLE `acl_object_identities`
  ADD CONSTRAINT `FK_9407E54977FA751A` FOREIGN KEY (`parent_object_identity_id`) REFERENCES `acl_object_identities` (`id`);

--
-- Contraintes pour la table `acl_object_identity_ancestors`
--
ALTER TABLE `acl_object_identity_ancestors`
  ADD CONSTRAINT `FK_825DE2993D9AB4A6` FOREIGN KEY (`object_identity_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_825DE299C671CEA1` FOREIGN KEY (`ancestor_id`) REFERENCES `acl_object_identities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `classification__category`
--
ALTER TABLE `classification__category`
  ADD CONSTRAINT `FK_43629B36154D61BC` FOREIGN KEY (`seo_og_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_43629B365E687384` FOREIGN KEY (`featured_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_43629B36727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `classification__category` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_43629B36E25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`),
  ADD CONSTRAINT `FK_43629B36F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`);

--
-- Contraintes pour la table `classification__collection`
--
ALTER TABLE `classification__collection`
  ADD CONSTRAINT `FK_A406B56AE25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`);

--
-- Contraintes pour la table `classification__tag`
--
ALTER TABLE `classification__tag`
  ADD CONSTRAINT `FK_CA57A1C7154D61BC` FOREIGN KEY (`seo_og_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CA57A1C75E687384` FOREIGN KEY (`featured_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_CA57A1C7E25D857E` FOREIGN KEY (`context`) REFERENCES `classification__context` (`id`),
  ADD CONSTRAINT `FK_CA57A1C7F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`);

--
-- Contraintes pour la table `many_to_many__article_category`
--
ALTER TABLE `many_to_many__article_category`
  ADD CONSTRAINT `FK_FF13D7DC12469DE2` FOREIGN KEY (`category_id`) REFERENCES `classification__category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FF13D7DC7294869C` FOREIGN KEY (`article_id`) REFERENCES `sonata_extra__article` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `many_to_many__article_category_revision`
--
ALTER TABLE `many_to_many__article_category_revision`
  ADD CONSTRAINT `FK_FBAB01B12469DE2` FOREIGN KEY (`category_id`) REFERENCES `classification__category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_FBAB01B7294869C` FOREIGN KEY (`article_id`) REFERENCES `sonata_extra__article_revision` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `many_to_many__article_tag`
--
ALTER TABLE `many_to_many__article_tag`
  ADD CONSTRAINT `FK_D9B071747294869C` FOREIGN KEY (`article_id`) REFERENCES `sonata_extra__article` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D9B07174BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `classification__tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `many_to_many__article_tag_revision`
--
ALTER TABLE `many_to_many__article_tag_revision`
  ADD CONSTRAINT `FK_9B52513C7294869C` FOREIGN KEY (`article_id`) REFERENCES `sonata_extra__article_revision` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_9B52513CBAD26311` FOREIGN KEY (`tag_id`) REFERENCES `classification__tag` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `media__gallery_item`
--
ALTER TABLE `media__gallery_item`
  ADD CONSTRAINT `FK_3238519A4E7AF8F` FOREIGN KEY (`gallery_id`) REFERENCES `media__gallery` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3238519AEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media__media` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `media__media`
--
ALTER TABLE `media__media`
  ADD CONSTRAINT `FK_5C6DD74E12469DE2` FOREIGN KEY (`category_id`) REFERENCES `classification__category` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `page__block`
--
ALTER TABLE `page__block`
  ADD CONSTRAINT `FK_66F58DA0727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `page__block` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_66F58DA0C4663E4` FOREIGN KEY (`page_id`) REFERENCES `page__page` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `page__page`
--
ALTER TABLE `page__page`
  ADD CONSTRAINT `FK_2FAE39ED727ACA70` FOREIGN KEY (`parent_id`) REFERENCES `page__page` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_2FAE39EDE13F2B9B` FOREIGN KEY (`media__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2FAE39EDF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `page__snapshot`
--
ALTER TABLE `page__snapshot`
  ADD CONSTRAINT `FK_3963EF9AC4663E4` FOREIGN KEY (`page_id`) REFERENCES `page__page` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_3963EF9AF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sonata_extra__admin_activity_change_log`
--
ALTER TABLE `sonata_extra__admin_activity_change_log`
  ADD CONSTRAINT `FK_B6F7739784C15161` FOREIGN KEY (`admin_activity_log_id`) REFERENCES `sonata_extra__admin_activity_log` (`id`);

--
-- Contraintes pour la table `sonata_extra__admin_activity_log`
--
ALTER TABLE `sonata_extra__admin_activity_log`
  ADD CONSTRAINT `FK_C3E5C3AEA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user__user` (`id`);

--
-- Contraintes pour la table `sonata_extra__article`
--
ALTER TABLE `sonata_extra__article`
  ADD CONSTRAINT `FK_5B55300154D61BC` FOREIGN KEY (`seo_og_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5B553005E687384` FOREIGN KEY (`featured_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_5B55300F675F31B` FOREIGN KEY (`author_id`) REFERENCES `user__user` (`id`),
  ADD CONSTRAINT `FK_5B55300F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`);

--
-- Contraintes pour la table `sonata_extra__article_revision`
--
ALTER TABLE `sonata_extra__article_revision`
  ADD CONSTRAINT `FK_BA8A553D154D61BC` FOREIGN KEY (`seo_og_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BA8A553D5E687384` FOREIGN KEY (`featured_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BA8A553D7294869C` FOREIGN KEY (`article_id`) REFERENCES `sonata_extra__article` (`id`),
  ADD CONSTRAINT `FK_BA8A553DF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user__user` (`id`);

--
-- Contraintes pour la table `sonata_extra__editor`
--
ALTER TABLE `sonata_extra__editor`
  ADD CONSTRAINT `FK_2E688EBE5E687384` FOREIGN KEY (`featured_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_2E688EBEF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user__user` (`id`),
  ADD CONSTRAINT `FK_2E688EBEF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`);

--
-- Contraintes pour la table `sonata_extra__editor_revision`
--
ALTER TABLE `sonata_extra__editor_revision`
  ADD CONSTRAINT `FK_4BBA8F5E687384` FOREIGN KEY (`featured_image__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_4BBA8F6995AC4C` FOREIGN KEY (`editor_id`) REFERENCES `sonata_extra__editor` (`id`),
  ADD CONSTRAINT `FK_4BBA8FF675F31B` FOREIGN KEY (`author_id`) REFERENCES `user__user` (`id`);

--
-- Contraintes pour la table `sonata_extra__faq_question`
--
ALTER TABLE `sonata_extra__faq_question`
  ADD CONSTRAINT `FK_C0682FB112469DE2` FOREIGN KEY (`category_id`) REFERENCES `sonata_extra__faq_category` (`id`);

--
-- Contraintes pour la table `sonata_extra__menu`
--
ALTER TABLE `sonata_extra__menu`
  ADD CONSTRAINT `FK_CCE146A7F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`);

--
-- Contraintes pour la table `sonata_extra__menu_item`
--
ALTER TABLE `sonata_extra__menu_item`
  ADD CONSTRAINT `FK_F12933B73D8E604F` FOREIGN KEY (`parent`) REFERENCES `sonata_extra__menu_item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_F12933B77D053A93` FOREIGN KEY (`menu`) REFERENCES `sonata_extra__menu` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `sonata_extra__slider`
--
ALTER TABLE `sonata_extra__slider`
  ADD CONSTRAINT `FK_2D5E6F03F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `page__site` (`id`);

--
-- Contraintes pour la table `sonata_extra__slider_slides`
--
ALTER TABLE `sonata_extra__slider_slides`
  ADD CONSTRAINT `FK_5CC266492CCC9638` FOREIGN KEY (`slider_id`) REFERENCES `sonata_extra__slider` (`id`),
  ADD CONSTRAINT `FK_5CC26649E13F2B9B` FOREIGN KEY (`media__media_id`) REFERENCES `media__media` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;