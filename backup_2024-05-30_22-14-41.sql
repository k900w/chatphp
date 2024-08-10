

CREATE TABLE `gr_audio_player` (
  `audio_content_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 = Radio 2 = Playlist',
  `radio_stream_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `now_playing_info_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `streaming_server` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`audio_content_id`),
  KEY `idx__disabled` (`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_audio_player ADD INDEX idx__disabled (disabled);

CREATE TABLE `gr_audio_player` (
  `audio_content_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audio_title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio_type` int(11) NOT NULL DEFAULT '1' COMMENT '1 = Radio 2 = Playlist',
  `radio_stream_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `now_playing_info_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `streaming_server` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`audio_content_id`),
  KEY `idx__disabled` (`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_badges` (
  `badge_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`badge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_badges` (
  `badge_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `badge_category` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`badge_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_badges_assigned` (
  `badge_assigned_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `badge_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `assigned_on` datetime NOT NULL,
  PRIMARY KEY (`badge_assigned_id`),
  KEY `badge_id_fk` (`badge_id`),
  KEY `user_id_fk_20` (`user_id`),
  KEY `group_id_fk_8` (`group_id`),
  CONSTRAINT `badge_id_fk` FOREIGN KEY (`badge_id`) REFERENCES `gr_badges` (`badge_id`) ON DELETE CASCADE,
  CONSTRAINT `group_id_fk_8` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_20` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_badges_assigned ADD INDEX badge_id_fk (badge_id);
ALTER TABLE gr_badges_assigned ADD INDEX user_id_fk_20 (user_id);
ALTER TABLE gr_badges_assigned ADD INDEX group_id_fk_8 (group_id);

CREATE TABLE `gr_badges_assigned` (
  `badge_assigned_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `badge_id` bigint(20) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `assigned_on` datetime NOT NULL,
  PRIMARY KEY (`badge_assigned_id`),
  KEY `badge_id_fk` (`badge_id`),
  KEY `user_id_fk_20` (`user_id`),
  KEY `group_id_fk_8` (`group_id`),
  CONSTRAINT `badge_id_fk` FOREIGN KEY (`badge_id`) REFERENCES `gr_badges` (`badge_id`) ON DELETE CASCADE,
  CONSTRAINT `group_id_fk_8` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_20` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_bank_transfer_receipts` (
  `bank_transfer_receipt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `membership_order_id` bigint(20) NOT NULL,
  `receipt_file_name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending, 1 = Accepted, 2 = Rejected',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`bank_transfer_receipt_id`),
  KEY `membership_order_id_fk_1` (`membership_order_id`),
  CONSTRAINT `membership_order_id_fk_1` FOREIGN KEY (`membership_order_id`) REFERENCES `gr_membership_orders` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_bank_transfer_receipts ADD INDEX membership_order_id_fk_1 (membership_order_id);

CREATE TABLE `gr_bank_transfer_receipts` (
  `bank_transfer_receipt_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `membership_order_id` bigint(20) NOT NULL,
  `receipt_file_name` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `receipt_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending, 1 = Accepted, 2 = Rejected',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`bank_transfer_receipt_id`),
  KEY `membership_order_id_fk_1` (`membership_order_id`),
  CONSTRAINT `membership_order_id_fk_1` FOREIGN KEY (`membership_order_id`) REFERENCES `gr_membership_orders` (`order_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_billing_address` (
  `billing_address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `billed_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`billing_address_id`),
  KEY `user_id_fk_26` (`user_id`),
  CONSTRAINT `user_id_fk_26` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_billing_address ADD INDEX user_id_fk_26 (user_id);

CREATE TABLE `gr_billing_address` (
  `billing_address_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `billed_to` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`billing_address_id`),
  KEY `user_id_fk_26` (`user_id`),
  CONSTRAINT `user_id_fk_26` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_complaints` (
  `complaint_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reason` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_message_id` bigint(20) DEFAULT NULL,
  `private_chat_message_id` bigint(20) DEFAULT NULL,
  `comments_by_complainant` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainant_user_id` bigint(20) DEFAULT NULL,
  `complaint_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Under Review\r\n1 = Action Taken\r\n2 = Rejected',
  `reviewer_user_id` bigint(20) DEFAULT NULL,
  `comments_by_reviewer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`complaint_id`),
  KEY `user_id_fk_7` (`complainant_user_id`),
  KEY `idx__complaint_status_complaint_id` (`complaint_status`,`complaint_id`),
  CONSTRAINT `user_id_fk_7` FOREIGN KEY (`complainant_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_complaints ADD INDEX user_id_fk_7 (complainant_user_id);
ALTER TABLE gr_complaints ADD INDEX idx__complaint_status_complaint_id (complaint_status);
ALTER TABLE gr_complaints ADD INDEX idx__complaint_status_complaint_id (complaint_id);

CREATE TABLE `gr_complaints` (
  `complaint_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reason` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `group_message_id` bigint(20) DEFAULT NULL,
  `private_chat_message_id` bigint(20) DEFAULT NULL,
  `comments_by_complainant` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complainant_user_id` bigint(20) DEFAULT NULL,
  `complaint_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Under Review\r\n1 = Action Taken\r\n2 = Rejected',
  `reviewer_user_id` bigint(20) DEFAULT NULL,
  `comments_by_reviewer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`complaint_id`),
  KEY `user_id_fk_7` (`complainant_user_id`),
  KEY `idx__complaint_status_complaint_id` (`complaint_status`,`complaint_id`),
  CONSTRAINT `user_id_fk_7` FOREIGN KEY (`complainant_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_cron_jobs` (
  `cron_job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_job` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_job_access_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_job_parameters` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `last_run_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cron_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_cron_jobs` (
  `cron_job_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cron_job` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_job_access_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cron_job_parameters` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `last_run_time` datetime DEFAULT NULL,
  PRIMARY KEY (`cron_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_css_variables` (
  `css_variable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `css_variable` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_variable_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_scheme` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light_mode',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`css_variable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_css_variables` (
  `css_variable_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `css_variable` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `css_variable_value` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_scheme` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'light_mode',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`css_variable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('1','landing-page-primary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('2','landing-page-secondary-bg-color','#F1F5F9','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('3','landing-page-tertiary-bg-color','#CED6DF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('4','landing-page-quaternary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('5','landing-page-quinary-bg-color','#FFF497','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('6','landing-page-senary-bg-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('7','landing-page-septenary-bg-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('8','landing-page-primary-text-color','#1B1E60','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('9','landing-page-secondary-text-color','#7F8097','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('10','landing-page-tertiary-text-color','#CFCFCF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('11','landing-page-quaternary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('12','landing-page-quinary-text-color','#FFEB3B','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('13','landing-page-senary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('14','landing-page-septenary-text-color','#3F3F3F','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('15','landing-page-octonary-text-color','#797F85','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('16','landing-page-primary-border-color','#B9BFC6','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('17','landing-page-secondary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('18','landing-page-primary-font-size','26px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('19','landing-page-secondary-font-size','18px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('20','landing-page-tertiary-font-size','17px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('21','landing-page-quaternary-font-size','16px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('22','landing-page-quinary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('23','landing-page-senary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('24','chat-page-primary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('25','chat-page-secondary-bg-color','#F06292','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('26','chat-page-tertiary-bg-color','#DBE1E7','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('27','chat-page-quaternary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('28','chat-page-quinary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('29','chat-page-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('30','chat-page-primary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('31','chat-page-secondary-font-size','18px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('32','chat-page-tertiary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('33','chat-page-primary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('34','chat-page-secondary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('35','chat-page-tertiary-text-color','#808080','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('36','side-navigation-primary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('37','side-navigation-secondary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('38','side-navigation-tertiary-bg-color','#EFF1F3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('39','side-navigation-quaternary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('40','side-navigation-primary-text-color','#878787','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('41','side-navigation-secondary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('42','side-navigation-tertiary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('43','side-navigation-quaternary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('44','side-navigation-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('45','side-navigation-primary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('46','side-navigation-secondary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('47','side-navigation-tertiary-font-size','20px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('48','left-side-content-primary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('49','left-side-content-secondary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('50','left-side-content-tertiary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('51','left-side-content-quaternary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('52','left-side-content-quinary-bg-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('53','left-side-content-senary-bg-color','#F8D7DA','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('54','left-side-content-septenary-bg-color','#FFC107','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('55','left-side-content-octonary-bg-color','#FF5722','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('56','left-side-content-nonary-bg-color','#F48FB1','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('57','left-side-content-denary-bg-color','#F06292','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('58','left-side-content-primary-text-color','#696767','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('59','left-side-content-secondary-text-color','#828588','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('60','left-side-content-tertiary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('61','left-side-content-quaternary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('62','left-side-content-quinary-text-color','#721C24','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('63','left-side-content-senary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('64','left-side-content-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('65','left-side-content-secondary-border-color','#E88A93','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('66','left-side-content-tertiary-border-color','#EC407A','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('67','left-side-content-quaternary-border-color','#D7DDE3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('68','left-side-content-primary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('69','left-side-content-secondary-font-size','12px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('70','left-side-content-tertiary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('71','left-side-content-quaternary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('72','left-side-content-quinary-font-size','11px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('73','left-side-content-senary-font-size','25px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('74','left-side-content-septenary-font-size','20px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('75','audio-player-primary-bg-color','#050517','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('76','audio-player-secondary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('77','audio-player-tertiary-bg-color','#FF4E8A','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('78','audio-player-quaternary-bg-color','#202030','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('79','audio-player-quinary-bg-color','#EFF1F3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('80','audio-player-senary-bg-color','#E45E8C','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('81','audio-player-primary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('82','audio-player-secondary-text-color','#696969','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('83','audio-player-tertiary-text-color','#97A1A9','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('84','audio-player-quaternary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('85','audio-player-quinary-text-color','#959595','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('86','audio-player-senary-text-color','#FF6D9F','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('87','audio-player-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('88','audio-player-primary-font-size','20px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('89','audio-player-secondary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('90','audio-player-tertiary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('91','audio-player-quaternary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('92','audio-player-quinary-font-size','27px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('93','audio-player-senary-font-size','11px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('94','form-primary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('95','form-secondary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('96','form-tertiary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('97','form-quaternary-bg-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('98','form-quinary-bg-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('99','form-senary-bg-color','#F8D7DA','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('100','form-septenary-bg-color','#E8EBEF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('101','form-octonary-bg-color','#F06292','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('102','form-primary-text-color','#808080','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('103','form-secondary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('104','form-tertiary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('105','form-quaternary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('106','form-quinary-text-color','#721C24','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('107','form-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('108','form-secondary-border-color','#E88A93','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('109','form-tertiary-border-color','#EC407A','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('110','form-primary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('111','form-secondary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('112','form-tertiary-font-size','18px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('113','info-panel-primary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('114','info-panel-secondary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('115','info-panel-tertiary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('116','info-panel-quaternary-bg-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('117','info-panel-quinary-bg-color','#FDFEFE','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('118','info-panel-senary-bg-color','#BFBDBD','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('119','info-panel-primary-text-color','#565656','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('120','info-panel-secondary-text-color','#878688','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('121','info-panel-tertiary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('122','info-panel-quaternary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('123','info-panel-quinary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('124','info-panel-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('125','info-panel-secondary-border-color','#E88A93','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('126','info-panel-tertiary-border-color','#EC407A','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('127','info-panel-primary-font-size','16px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('128','info-panel-secondary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('129','info-panel-tertiary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('130','info-panel-quaternary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('131','welcome-screen-primary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('132','welcome-screen-primary-text-color','#696767','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('133','welcome-screen-secondary-text-color','#828588','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('134','welcome-screen-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('135','welcome-screen-primary-font-size','19px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('136','welcome-screen-secondary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('137','welcome-screen-tertiary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('138','custom-page-primary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('139','custom-page-secondary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('140','custom-page-primary-text-color','#8F8F8F','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('141','custom-page-secondary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('142','custom-page-tertiary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('143','custom-page-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('144','custom-page-primary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('145','custom-page-secondary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('146','statistics-primary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('147','statistics-secondary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('148','statistics-tertiary-bg-color','#050517','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('149','statistics-quaternary-bg-color','#262630','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('150','statistics-quinary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('151','statistics-senary-bg-color','#A5A5A5','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('152','statistics-septenary-bg-color','#FFEB3B','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('153','statistics-primary-text-color','#4A4A49','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('154','statistics-secondary-text-color','#808080','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('155','statistics-tertiary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('156','statistics-quaternary-text-color','#C7C7C7','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('157','statistics-quinary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('158','statistics-senary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('159','statistics-septenary-text-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('160','statistics-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('161','statistics-primary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('162','statistics-secondary-font-size','17px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('163','statistics-tertiary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('164','statistics-quaternary-font-size','19px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('165','membership_info-primary-bg-color','#F4F4F4','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('166','membership_info-secondary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('167','membership_info-tertiary-bg-color','#F3F3F4','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('168','membership_info-quaternary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('169','membership_info-quinary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('170','membership_info-senary-bg-color','#EBEFF3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('171','membership_info-septenary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('172','membership_info-octonary-bg-color','#FFC107','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('173','membership_info-nonary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('174','membership_info-denary-bg-color','#1B1B1B','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('175','membership_info-primary-text-color','#202020','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('176','membership_info-secondary-text-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('177','membership_info-tertiary-text-color','#727272','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('178','membership_info-quaternary-text-color','#787878','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('179','membership_info-quinary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('180','membership_info-senary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('181','membership_info-septenary-text-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('182','membership_info-octonary-text-color','#FFC107','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('183','membership_info-nonary-text-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('184','membership_info-denary-text-color','#000000','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('185','membership_info-primary-border-color','#D6D6D6','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('186','membership_info-primary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('187','membership_info-secondary-font-size','17px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('188','membership_info-tertiary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('189','membership_info-quaternary-font-size','19px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('190','membership_info-quinary-font-size','27px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('191','membership_info-senary-font-size','16px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('192','chat-window-primary-bg-color','#FAFBFC','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('193','chat-window-secondary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('194','chat-window-tertiary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('195','chat-window-quaternary-bg-color','#F06292','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('196','chat-window-quinary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('197','chat-window-senary-bg-color','#FFF3CD','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('198','chat-window-septenary-bg-color','#ECEFF1','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('199','chat-window-octonary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('200','chat-window-nonary-bg-color','#F06292','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('201','chat-window-denary-bg-color','#9E9E9E','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('202','chat-window-primary-text-color','#808080','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('203','chat-window-secondary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('204','chat-window-tertiary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('205','chat-window-quaternary-text-color','#808080','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('206','chat-window-quinary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('207','chat-window-senary-text-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('208','chat-window-septenary-text-color','#856404','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('209','chat-window-octonary-text-color','#565656','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('210','chat-window-nonary-text-color','#E45E8C','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('211','chat-window-denary-text-color','#B1B1B1','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('212','chat-window-undenary-text-color','#FF9800','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('213','chat-window-duodenary-text-color','#FFEB3B','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('214','chat-window-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('215','chat-window-secondary-border-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('216','chat-window-tertiary-border-color','#F7E2A0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('217','chat-window-quaternary-border-color','#607D8B','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('218','chat-window-quinary-border-color','#EC407A','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('219','chat-window-senary-border-color','#FFC107','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('220','chat-window-septenary-border-color','#D7DDE3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('221','chat-window-primary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('222','chat-window-secondary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('223','chat-window-tertiary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('224','chat-window-quaternary-font-size','12px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('225','chat-window-quinary-font-size','19px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('226','chat-window-senary-font-size','27px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('227','chat-window-septenary-font-size','30px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('228','chat-window-octonary-font-size','34px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('229','chat-window-nonary-font-size','22px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('230','entry-page-primary-bg-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('231','entry-page-secondary-bg-color','#F7F9FB','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('232','entry-page-tertiary-bg-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('233','entry-page-quaternary-bg-color','#9C27B0','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('234','entry-page-quinary-bg-color','#9E9E9E','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('235','entry-page-senary-bg-color','#F06292','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('236','entry-page-primary-text-color','#808080','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('237','entry-page-secondary-text-color','#919191','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('238','entry-page-tertiary-text-color','#23576A','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('239','entry-page-quaternary-text-color','#FFFFFF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('240','entry-page-quinary-text-color','#E91E63','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('241','entry-page-senary-text-color','#333333','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('242','entry-page-primary-border-color','#DFE7EF','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('243','entry-page-secondary-border-color','#A9A9A9','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('244','entry-page-tertiary-border-color','#DC1F6F','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('245','entry-page-quaternary-border-color','#D7DDE3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('246','entry-page-primary-font-size','14px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('247','entry-page-secondary-font-size','15px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('248','entry-page-tertiary-font-size','18px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('249','entry-page-quaternary-font-size','20px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('250','entry-page-quinary-font-size','16px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('251','entry-page-senary-font-size','13px','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('252','landing-page-primary-bg-color','#1D1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('253','landing-page-secondary-bg-color','#131313','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('254','landing-page-tertiary-bg-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('255','landing-page-quaternary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('256','landing-page-quinary-bg-color','#FFF497','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('257','landing-page-senary-bg-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('258','landing-page-septenary-bg-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('259','landing-page-primary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('260','landing-page-secondary-text-color','#AFAFAF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('261','landing-page-tertiary-text-color','#CFCFCF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('262','landing-page-quaternary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('263','landing-page-quinary-text-color','#FFEB3B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('264','landing-page-senary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('265','landing-page-septenary-text-color','#3F3F3F','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('266','landing-page-octonary-text-color','#727272','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('267','landing-page-primary-border-color','#222222','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('268','landing-page-secondary-border-color','#101010','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('269','landing-page-primary-font-size','25px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('270','landing-page-secondary-font-size','18px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('271','landing-page-tertiary-font-size','17px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('272','landing-page-quaternary-font-size','16px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('273','landing-page-quinary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('274','landing-page-senary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('275','chat-page-primary-bg-color','#0F0F0F','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('276','chat-page-secondary-bg-color','#F06292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('277','chat-page-tertiary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('278','chat-page-quaternary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('279','chat-page-quinary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('280','chat-page-primary-border-color','#101010','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('281','chat-page-primary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('282','chat-page-secondary-font-size','18px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('283','chat-page-tertiary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('284','chat-page-primary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('285','chat-page-secondary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('286','chat-page-tertiary-text-color','#858585','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('287','side-navigation-primary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('288','side-navigation-secondary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('289','side-navigation-tertiary-bg-color','#1D1C1C','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('290','side-navigation-quaternary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('291','side-navigation-primary-text-color','#9D9D9D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('292','side-navigation-secondary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('293','side-navigation-tertiary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('294','side-navigation-quaternary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('295','side-navigation-primary-border-color','#060606','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('296','side-navigation-primary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('297','side-navigation-secondary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('298','side-navigation-tertiary-font-size','20px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('299','left-side-content-primary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('300','left-side-content-secondary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('301','left-side-content-tertiary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('302','left-side-content-quaternary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('303','left-side-content-quinary-bg-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('304','left-side-content-senary-bg-color','#F8D7DA','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('305','left-side-content-septenary-bg-color','#FFC107','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('306','left-side-content-octonary-bg-color','#FF5722','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('307','left-side-content-nonary-bg-color','#F48FB1','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('308','left-side-content-denary-bg-color','#F06292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('309','left-side-content-primary-text-color','#B6B6B6','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('310','left-side-content-secondary-text-color','#797979','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('311','left-side-content-tertiary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('312','left-side-content-quaternary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('313','left-side-content-quinary-text-color','#721C24','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('314','left-side-content-senary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('315','left-side-content-primary-border-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('316','left-side-content-secondary-border-color','#E88A93','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('317','left-side-content-tertiary-border-color','#EC407A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('318','left-side-content-quaternary-border-color','#474747','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('319','left-side-content-primary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('320','left-side-content-secondary-font-size','12px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('321','left-side-content-tertiary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('322','left-side-content-quaternary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('323','left-side-content-quinary-font-size','11px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('324','left-side-content-senary-font-size','25px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('325','left-side-content-septenary-font-size','20px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('326','audio-player-primary-bg-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('327','audio-player-secondary-bg-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('328','audio-player-tertiary-bg-color','#FF4E8A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('329','audio-player-quaternary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('330','audio-player-quinary-bg-color','#EFF1F3','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('331','audio-player-senary-bg-color','#E45E8C','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('332','audio-player-primary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('333','audio-player-secondary-text-color','#AAA7A7','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('334','audio-player-tertiary-text-color','#818589','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('335','audio-player-quaternary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('336','audio-player-quinary-text-color','#666666','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('337','audio-player-senary-text-color','#FF6D9F','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('338','audio-player-primary-border-color','#383838','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('339','audio-player-primary-font-size','20px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('340','audio-player-secondary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('341','audio-player-tertiary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('342','audio-player-quaternary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('343','audio-player-quinary-font-size','27px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('344','audio-player-senary-font-size','11px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('345','form-primary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('346','form-secondary-bg-color','#040404','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('347','form-tertiary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('348','form-quaternary-bg-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('349','form-quinary-bg-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('350','form-senary-bg-color','#F8D7DA','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('351','form-septenary-bg-color','#030303','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('352','form-octonary-bg-color','#F06292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('353','form-primary-text-color','#A1A1A1','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('354','form-secondary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('355','form-tertiary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('356','form-quaternary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('357','form-quinary-text-color','#721C24','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('358','form-primary-border-color','#383838','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('359','form-secondary-border-color','#E88A93','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('360','form-tertiary-border-color','#EC407A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('361','form-primary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('362','form-secondary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('363','form-tertiary-font-size','18px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('364','info-panel-primary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('365','info-panel-secondary-bg-color','#2E2E2E','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('366','info-panel-tertiary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('367','info-panel-quaternary-bg-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('368','info-panel-quinary-bg-color','#242424','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('369','info-panel-senary-bg-color','#454545','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('370','info-panel-primary-text-color','#B2B1B1','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('371','info-panel-secondary-text-color','#959595','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('372','info-panel-tertiary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('373','info-panel-quaternary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('374','info-panel-quinary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('375','info-panel-primary-border-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('376','info-panel-secondary-border-color','#E88A93','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('377','info-panel-tertiary-border-color','#EC407A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('378','info-panel-primary-font-size','16px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('379','info-panel-secondary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('380','info-panel-tertiary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('381','info-panel-quaternary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('382','welcome-screen-primary-bg-color','#2E2E2E','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('383','welcome-screen-primary-text-color','#A4A4A4','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('384','welcome-screen-secondary-text-color','#7E7F81','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('385','welcome-screen-primary-border-color','#383838','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('386','welcome-screen-primary-font-size','19px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('387','welcome-screen-secondary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('388','welcome-screen-tertiary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('389','custom-page-primary-bg-color','#2E2E2E','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('390','custom-page-secondary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('391','custom-page-primary-text-color','#8A8A8A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('392','custom-page-secondary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('393','custom-page-tertiary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('394','custom-page-primary-border-color','#383838','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('395','custom-page-primary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('396','custom-page-secondary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('397','statistics-primary-bg-color','#2E2E2E','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('398','statistics-secondary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('399','statistics-tertiary-bg-color','#232323','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('400','statistics-quaternary-bg-color','#191919','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('401','statistics-quinary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('402','statistics-senary-bg-color','#1B1B1B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('403','statistics-septenary-bg-color','#FFEB3B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('404','statistics-primary-text-color','#B4B4B4','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('405','statistics-secondary-text-color','#818181','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('406','statistics-tertiary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('407','statistics-quaternary-text-color','#8B8B8B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('408','statistics-quinary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('409','statistics-senary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('410','statistics-septenary-text-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('411','statistics-primary-border-color','#060606','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('412','statistics-primary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('413','statistics-secondary-font-size','17px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('414','statistics-tertiary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('415','statistics-quaternary-font-size','19px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('416','membership_info-primary-bg-color','#2E2E2E','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('417','membership_info-secondary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('418','membership_info-tertiary-bg-color','#222222','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('419','membership_info-quaternary-bg-color','#161616','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('420','membership_info-quinary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('421','membership_info-senary-bg-color','#1B1B1B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('422','membership_info-septenary-bg-color','#2F2E2E','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('423','membership_info-octonary-bg-color','#FFC107','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('424','membership_info-nonary-bg-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('425','membership_info-denary-bg-color','#1B1B1B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('426','membership_info-primary-text-color','#B4B4B4','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('427','membership_info-secondary-text-color','#BFBFBF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('428','membership_info-tertiary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('429','membership_info-quaternary-text-color','#A1A1A1','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('430','membership_info-quinary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('431','membership_info-senary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('432','membership_info-septenary-text-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('433','membership_info-octonary-text-color','#FFEB3B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('434','membership_info-nonary-text-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('435','membership_info-denary-text-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('436','membership_info-primary-border-color','#060606','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('437','membership_info-primary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('438','membership_info-secondary-font-size','17px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('439','membership_info-tertiary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('440','membership_info-quaternary-font-size','19px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('441','membership_info-quinary-font-size','27px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('442','membership_info-senary-font-size','16px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('443','chat-window-primary-bg-color','#070707','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('444','chat-window-secondary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('445','chat-window-tertiary-bg-color','#040404','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('446','chat-window-quaternary-bg-color','#F06292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('447','chat-window-quinary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('448','chat-window-senary-bg-color','#1F1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('449','chat-window-septenary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('450','chat-window-octonary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('451','chat-window-nonary-bg-color','#F06292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('452','chat-window-denary-bg-color','#312F2F','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('453','chat-window-primary-text-color','#8D8D8D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('454','chat-window-secondary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('455','chat-window-tertiary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('456','chat-window-quaternary-text-color','#989898','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('457','chat-window-quinary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('458','chat-window-senary-text-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('459','chat-window-septenary-text-color','#666664','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('460','chat-window-octonary-text-color','#565656','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('461','chat-window-nonary-text-color','#E45E8C','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('462','chat-window-denary-text-color','#B1B1B1','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('463','chat-window-undenary-text-color','#FF9800','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('464','chat-window-duodenary-text-color','#FFEB3B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('465','chat-window-primary-border-color','#000000','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('466','chat-window-secondary-border-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('467','chat-window-tertiary-border-color','#0A0A0A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('468','chat-window-quaternary-border-color','#607D8B','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('469','chat-window-quinary-border-color','#EC407A','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('470','chat-window-senary-border-color','#FFC107','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('471','chat-window-septenary-border-color','#474747','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('472','chat-window-primary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('473','chat-window-secondary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('474','chat-window-tertiary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('475','chat-window-quaternary-font-size','12px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('476','chat-window-quinary-font-size','19px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('477','chat-window-senary-font-size','27px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('478','chat-window-septenary-font-size','30px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('479','chat-window-octonary-font-size','34px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('480','chat-window-nonary-font-size','22px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('481','entry-page-primary-bg-color','#1E1D1D','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('482','entry-page-secondary-bg-color','#292929','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('483','entry-page-tertiary-bg-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('484','entry-page-quaternary-bg-color','#9C27B0','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('485','entry-page-quinary-bg-color','#353333','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('486','entry-page-senary-bg-color','#F06292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('487','entry-page-primary-text-color','#858585','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('488','entry-page-secondary-text-color','#929292','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('489','entry-page-tertiary-text-color','#CDCDCD','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('490','entry-page-quaternary-text-color','#FFFFFF','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('491','entry-page-quinary-text-color','#E91E63','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('492','entry-page-senary-text-color','#808080','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('493','entry-page-primary-border-color','#101010','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('494','entry-page-secondary-border-color','#A9A9A9','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('495','entry-page-tertiary-border-color','#DC1F6F','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('496','entry-page-quaternary-border-color','#474747','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('497','entry-page-primary-font-size','14px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('498','entry-page-secondary-font-size','15px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('499','entry-page-tertiary-font-size','18px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('500','entry-page-quaternary-font-size','20px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('501','entry-page-quinary-font-size','16px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('502','entry-page-senary-font-size','13px','dark_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('503','landing-page-octonary-bg-color','#EBEFF3','light_mode','2024-05-30 11:04:20');
INSERT INTO gr_css_variables (`css_variable_id`,`css_variable`,`css_variable_value`,`color_scheme`,`updated_on`) VALUES ('504','landing-page-octonary-bg-color','#0B0B0B','dark_mode','2024-05-30 11:04:20');



CREATE TABLE `gr_custom_fields` (
  `field_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_category` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile',
  `field_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_on_signup` int(11) NOT NULL DEFAULT '0',
  `show_on_guest_login` int(11) NOT NULL DEFAULT '0',
  `required` int(11) NOT NULL DEFAULT '0',
  `minimum_length` int(11) NOT NULL DEFAULT '0',
  `maximum_length` int(11) NOT NULL DEFAULT '250',
  `show_on_info_page` int(11) NOT NULL DEFAULT '1',
  `editable_only_once` int(11) NOT NULL DEFAULT '0',
  `searchable_field` int(11) NOT NULL DEFAULT '0',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `order_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`field_id`),
  KEY `idx__type_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_custom_fields ADD INDEX idx__type_id (field_id);

CREATE TABLE `gr_custom_fields` (
  `field_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_category` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'profile',
  `field_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_on_signup` int(11) NOT NULL DEFAULT '0',
  `show_on_guest_login` int(11) NOT NULL DEFAULT '0',
  `required` int(11) NOT NULL DEFAULT '0',
  `minimum_length` int(11) NOT NULL DEFAULT '0',
  `maximum_length` int(11) NOT NULL DEFAULT '250',
  `show_on_info_page` int(11) NOT NULL DEFAULT '1',
  `editable_only_once` int(11) NOT NULL DEFAULT '0',
  `searchable_field` int(11) NOT NULL DEFAULT '0',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `order_by` bigint(20) NOT NULL DEFAULT '0',
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`field_id`),
  KEY `idx__type_id` (`field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_custom_fields (`field_id`,`string_constant`,`field_category`,`field_type`,`show_on_signup`,`show_on_guest_login`,`required`,`minimum_length`,`maximum_length`,`show_on_info_page`,`editable_only_once`,`searchable_field`,`disabled`,`order_by`,`updated_on`) VALUES ('1','custom_field_1','profile','long_text','1','0','1','0','250','1','0','0','0','0','2022-09-29 18:19:00');
INSERT INTO gr_custom_fields (`field_id`,`string_constant`,`field_category`,`field_type`,`show_on_signup`,`show_on_guest_login`,`required`,`minimum_length`,`maximum_length`,`show_on_info_page`,`editable_only_once`,`searchable_field`,`disabled`,`order_by`,`updated_on`) VALUES ('2','custom_field_2','profile','date','1','0','0','0','0','1','0','1','0','0','2024-02-14 23:46:22');
INSERT INTO gr_custom_fields (`field_id`,`string_constant`,`field_category`,`field_type`,`show_on_signup`,`show_on_guest_login`,`required`,`minimum_length`,`maximum_length`,`show_on_info_page`,`editable_only_once`,`searchable_field`,`disabled`,`order_by`,`updated_on`) VALUES ('3','custom_field_3','profile','dropdown','1','0','1','0','0','1','0','1','0','0','2023-09-21 12:38:55');
INSERT INTO gr_custom_fields (`field_id`,`string_constant`,`field_category`,`field_type`,`show_on_signup`,`show_on_guest_login`,`required`,`minimum_length`,`maximum_length`,`show_on_info_page`,`editable_only_once`,`searchable_field`,`disabled`,`order_by`,`updated_on`) VALUES ('4','custom_field_4','profile','link','0','0','0','0','0','1','0','0','0','0','2023-04-16 17:02:10');
INSERT INTO gr_custom_fields (`field_id`,`string_constant`,`field_category`,`field_type`,`show_on_signup`,`show_on_guest_login`,`required`,`minimum_length`,`maximum_length`,`show_on_info_page`,`editable_only_once`,`searchable_field`,`disabled`,`order_by`,`updated_on`) VALUES ('5','custom_field_5','profile','short_text','0','0','0','0','0','1','0','0','0','0','2023-09-21 12:58:38');
INSERT INTO gr_custom_fields (`field_id`,`string_constant`,`field_category`,`field_type`,`show_on_signup`,`show_on_guest_login`,`required`,`minimum_length`,`maximum_length`,`show_on_info_page`,`editable_only_once`,`searchable_field`,`disabled`,`order_by`,`updated_on`) VALUES ('6','custom_field_6','profile','dropdown','0','0','0','0','0','1','0','1','0','0','2023-04-16 20:24:19');



CREATE TABLE `gr_custom_fields_values` (
  `field_value_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `field_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`field_value_id`),
  KEY `field_id_fk` (`field_id`),
  KEY `user_id_fk_6` (`user_id`),
  KEY `group_id_fk_4` (`group_id`),
  KEY `idx__user_id_field_id` (`user_id`,`field_id`),
  CONSTRAINT `field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `gr_custom_fields` (`field_id`) ON DELETE CASCADE,
  CONSTRAINT `group_id_fk_4` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_6` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_custom_fields_values ADD INDEX field_id_fk (field_id);
ALTER TABLE gr_custom_fields_values ADD INDEX user_id_fk_6 (user_id);
ALTER TABLE gr_custom_fields_values ADD INDEX group_id_fk_4 (group_id);
ALTER TABLE gr_custom_fields_values ADD INDEX idx__user_id_field_id (user_id);
ALTER TABLE gr_custom_fields_values ADD INDEX idx__user_id_field_id (field_id);

CREATE TABLE `gr_custom_fields_values` (
  `field_value_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `field_id` bigint(20) NOT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `field_value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`field_value_id`),
  KEY `field_id_fk` (`field_id`),
  KEY `user_id_fk_6` (`user_id`),
  KEY `group_id_fk_4` (`group_id`),
  KEY `idx__user_id_field_id` (`user_id`,`field_id`),
  CONSTRAINT `field_id_fk` FOREIGN KEY (`field_id`) REFERENCES `gr_custom_fields` (`field_id`) ON DELETE CASCADE,
  CONSTRAINT `group_id_fk_4` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_6` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('1','6','','1','US','2024-05-31 00:06:03');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('2','6','','2','US','2024-05-23 01:32:46');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('3','6','','3','US','2024-05-23 01:34:24');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('4','1','','4','123123','2024-05-30 11:02:38');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('5','3','','4','male','2024-05-30 11:02:38');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('6','6','','4','US','2024-05-30 11:02:38');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('7','1','','1','','2024-05-31 00:06:03');
INSERT INTO gr_custom_fields_values (`field_value_id`,`field_id`,`group_id`,`user_id`,`field_value`,`updated_on`) VALUES ('8','5','','1','','2024-05-31 00:06:03');



CREATE TABLE `gr_custom_menu_items` (
  `menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon_class` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  `web_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_target` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Open URL in same window\r\n1 = Open URL in New tab',
  `show_on_landing_page_header` int(11) NOT NULL DEFAULT '0',
  `show_on_landing_page_footer` int(11) NOT NULL DEFAULT '0',
  `show_on_entry_page` int(11) NOT NULL DEFAULT '0',
  `show_on_chat_page` int(11) NOT NULL DEFAULT '0',
  `show_on_chat_page_top` int(11) NOT NULL DEFAULT '0',
  `menu_item_order` int(11) NOT NULL DEFAULT '0',
  `menu_item_visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`menu_item_id`),
  KEY `page_id_fk` (`page_id`),
  KEY `idx__menu_item_order` (`menu_item_order`),
  CONSTRAINT `page_id_fk` FOREIGN KEY (`page_id`) REFERENCES `gr_custom_pages` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_custom_menu_items ADD INDEX page_id_fk (page_id);
ALTER TABLE gr_custom_menu_items ADD INDEX idx__menu_item_order (menu_item_order);

CREATE TABLE `gr_custom_menu_items` (
  `menu_item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `menu_icon_class` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` bigint(20) DEFAULT NULL,
  `web_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_target` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Open URL in same window\r\n1 = Open URL in New tab',
  `show_on_landing_page_header` int(11) NOT NULL DEFAULT '0',
  `show_on_landing_page_footer` int(11) NOT NULL DEFAULT '0',
  `show_on_entry_page` int(11) NOT NULL DEFAULT '0',
  `show_on_chat_page` int(11) NOT NULL DEFAULT '0',
  `show_on_chat_page_top` int(11) NOT NULL DEFAULT '0',
  `menu_item_order` int(11) NOT NULL DEFAULT '0',
  `menu_item_visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'all',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`menu_item_id`),
  KEY `page_id_fk` (`page_id`),
  KEY `idx__menu_item_order` (`menu_item_order`),
  CONSTRAINT `page_id_fk` FOREIGN KEY (`page_id`) REFERENCES `gr_custom_pages` (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_custom_pages` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `who_all_can_view_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'all',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_custom_pages` (
  `page_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `who_all_can_view_page` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'all',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`page_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_friends` (
  `friendship_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) NOT NULL,
  `to_user_id` bigint(20) NOT NULL,
  `relation_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending 1 = Friends',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`friendship_id`),
  KEY `user_id_fk_23` (`to_user_id`),
  KEY `user_id_fk_22` (`from_user_id`) USING BTREE,
  KEY `idx__friend_status` (`from_user_id`,`to_user_id`,`relation_status`),
  CONSTRAINT `user_id_fk_22` FOREIGN KEY (`from_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_23` FOREIGN KEY (`to_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_friends ADD INDEX user_id_fk_23 (to_user_id);
ALTER TABLE gr_friends ADD INDEX user_id_fk_22 (from_user_id);
ALTER TABLE gr_friends ADD INDEX idx__friend_status (from_user_id);
ALTER TABLE gr_friends ADD INDEX idx__friend_status (to_user_id);
ALTER TABLE gr_friends ADD INDEX idx__friend_status (relation_status);

CREATE TABLE `gr_friends` (
  `friendship_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) NOT NULL,
  `to_user_id` bigint(20) NOT NULL,
  `relation_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending 1 = Friends',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`friendship_id`),
  KEY `user_id_fk_23` (`to_user_id`),
  KEY `user_id_fk_22` (`from_user_id`) USING BTREE,
  KEY `idx__friend_status` (`from_user_id`,`to_user_id`,`relation_status`),
  CONSTRAINT `user_id_fk_22` FOREIGN KEY (`from_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_23` FOREIGN KEY (`to_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_group_categories` (
  `group_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `category_order` int(11) NOT NULL DEFAULT '1',
  `group_category_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_group_categories` (
  `group_category_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `category_order` int(11) NOT NULL DEFAULT '1',
  `group_category_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_group_categories (`group_category_id`,`category_name`,`created_by`,`category_order`,`group_category_image`,`disabled`,`created_on`,`updated_on`) VALUES ('1','Uncategorized','1','1','assets/files/group_categories/default.png','0','2024-04-26 23:59:31','2024-05-15 00:14:20');



CREATE TABLE `gr_group_invitations` (
  `group_invitation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `referrer_user_id` bigint(20) DEFAULT NULL,
  `related_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invitation_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired` int(11) NOT NULL DEFAULT '0' COMMENT '0 = No\r\n1 = Yes',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_invitation_id`),
  KEY `group_id_fk_6` (`group_id`),
  KEY `user_id_fk_9` (`user_id`),
  CONSTRAINT `group_id_fk_6` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_9` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_group_invitations ADD INDEX group_id_fk_6 (group_id);
ALTER TABLE gr_group_invitations ADD INDEX user_id_fk_9 (user_id);

CREATE TABLE `gr_group_invitations` (
  `group_invitation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `group_id` bigint(20) DEFAULT NULL,
  `referrer_user_id` bigint(20) DEFAULT NULL,
  `related_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invitation_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired` int(11) NOT NULL DEFAULT '0' COMMENT '0 = No\r\n1 = Yes',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_invitation_id`),
  KEY `group_id_fk_6` (`group_id`),
  KEY `user_id_fk_9` (`user_id`),
  CONSTRAINT `group_id_fk_6` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_9` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_group_members` (
  `group_member_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_role_id` bigint(20) NOT NULL DEFAULT '4',
  `referrer_user_id` bigint(20) DEFAULT '0',
  `last_read_message_id` bigint(20) DEFAULT '0',
  `load_message_id_from` bigint(20) DEFAULT NULL,
  `currently_browsing` int(11) NOT NULL DEFAULT '0',
  `previous_group_role_id` bigint(20) NOT NULL DEFAULT '4',
  `banned_till` datetime DEFAULT NULL,
  `joined_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`group_member_id`),
  KEY `group_id_fk` (`group_id`),
  KEY `user_id_fk` (`user_id`),
  KEY `group_role_id_fk` (`group_role_id`),
  KEY `idx__user_id_group_id` (`user_id`,`group_id`),
  KEY `idx__group_id_user_id` (`group_id`,`user_id`),
  KEY `idx__user_id_last_read_message_id` (`user_id`,`last_read_message_id`),
  KEY `idx__user_id_group_role_id` (`user_id`,`group_role_id`),
  KEY `idx__last_read_message_id` (`last_read_message_id`),
  KEY `idx__group_id_group_member_id` (`group_id`,`group_member_id`),
  CONSTRAINT `group_id_fk` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `group_role_id_fk` FOREIGN KEY (`group_role_id`) REFERENCES `gr_group_roles` (`group_role_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_group_members ADD INDEX group_id_fk (group_id);
ALTER TABLE gr_group_members ADD INDEX user_id_fk (user_id);
ALTER TABLE gr_group_members ADD INDEX group_role_id_fk (group_role_id);
ALTER TABLE gr_group_members ADD INDEX idx__user_id_group_id (user_id);
ALTER TABLE gr_group_members ADD INDEX idx__user_id_group_id (group_id);
ALTER TABLE gr_group_members ADD INDEX idx__group_id_user_id (group_id);
ALTER TABLE gr_group_members ADD INDEX idx__group_id_user_id (user_id);
ALTER TABLE gr_group_members ADD INDEX idx__user_id_last_read_message_id (user_id);
ALTER TABLE gr_group_members ADD INDEX idx__user_id_last_read_message_id (last_read_message_id);
ALTER TABLE gr_group_members ADD INDEX idx__user_id_group_role_id (user_id);
ALTER TABLE gr_group_members ADD INDEX idx__user_id_group_role_id (group_role_id);
ALTER TABLE gr_group_members ADD INDEX idx__last_read_message_id (last_read_message_id);
ALTER TABLE gr_group_members ADD INDEX idx__group_id_group_member_id (group_id);
ALTER TABLE gr_group_members ADD INDEX idx__group_id_group_member_id (group_member_id);

CREATE TABLE `gr_group_members` (
  `group_member_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `group_role_id` bigint(20) NOT NULL DEFAULT '4',
  `referrer_user_id` bigint(20) DEFAULT '0',
  `last_read_message_id` bigint(20) DEFAULT '0',
  `load_message_id_from` bigint(20) DEFAULT NULL,
  `currently_browsing` int(11) NOT NULL DEFAULT '0',
  `previous_group_role_id` bigint(20) NOT NULL DEFAULT '4',
  `banned_till` datetime DEFAULT NULL,
  `joined_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`group_member_id`),
  KEY `group_id_fk` (`group_id`),
  KEY `user_id_fk` (`user_id`),
  KEY `group_role_id_fk` (`group_role_id`),
  KEY `idx__user_id_group_id` (`user_id`,`group_id`),
  KEY `idx__group_id_user_id` (`group_id`,`user_id`),
  KEY `idx__user_id_last_read_message_id` (`user_id`,`last_read_message_id`),
  KEY `idx__user_id_group_role_id` (`user_id`,`group_role_id`),
  KEY `idx__last_read_message_id` (`last_read_message_id`),
  KEY `idx__group_id_group_member_id` (`group_id`,`group_member_id`),
  CONSTRAINT `group_id_fk` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `group_role_id_fk` FOREIGN KEY (`group_role_id`) REFERENCES `gr_group_roles` (`group_role_id`),
  CONSTRAINT `user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('4','2','1','2','0','56','','1','2','','2024-05-30 07:03:49','2024-05-30 07:03:49');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('5','2','4','4','0','32','','1','4','','2024-05-30 14:27:12','2024-05-30 14:27:12');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('6','2','3','4','0','51','','1','4','','2024-05-30 14:44:04','2024-05-30 14:44:04');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('7','3','1','2','0','33','','0','2','','2024-05-30 23:50:09','2024-05-30 23:50:09');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('8','4','1','2','0','34','','0','2','','2024-05-30 23:50:15','2024-05-30 23:50:15');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('9','5','1','2','0','35','','0','2','','2024-05-30 23:50:21','2024-05-30 23:50:21');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('10','6','1','2','0','36','','0','2','','2024-05-30 23:50:27','2024-05-30 23:50:27');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('11','7','1','2','0','37','','0','2','','2024-05-30 23:50:32','2024-05-30 23:50:32');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('12','8','1','2','0','38','','0','2','','2024-05-30 23:50:38','2024-05-30 23:50:38');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('13','9','1','2','0','39','','0','2','','2024-05-30 23:50:45','2024-05-30 23:50:45');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('14','10','1','2','0','48','','0','2','','2024-05-30 23:50:52','2024-05-30 23:50:52');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('15','11','1','2','0','47','','0','2','','2024-05-30 23:50:58','2024-05-30 23:50:58');
INSERT INTO gr_group_members (`group_member_id`,`group_id`,`user_id`,`group_role_id`,`referrer_user_id`,`last_read_message_id`,`load_message_id_from`,`currently_browsing`,`previous_group_role_id`,`banned_till`,`joined_on`,`updated_on`) VALUES ('16','8','3','4','0','44','','0','4','','2024-05-30 23:51:32','2024-05-30 23:51:32');



CREATE TABLE `gr_group_messages` (
  `group_message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `original_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filtered_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_message` int(11) NOT NULL DEFAULT '0',
  `parent_message_id` bigint(20) DEFAULT NULL,
  `attachment_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reactions` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_message_id`),
  KEY `group_id_fk_2` (`group_id`),
  KEY `user_id_fk_2` (`user_id`),
  KEY `group_message_id_fk_3` (`parent_message_id`),
  KEY `idx__group_id_group_message_id` (`group_id`,`group_message_id`),
  KEY `idx__attachment_type_group_id_group_message_id` (`attachment_type`,`group_id`,`group_message_id`),
  CONSTRAINT `group_id_fk_2` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `group_message_id_fk_3` FOREIGN KEY (`parent_message_id`) REFERENCES `gr_group_messages` (`group_message_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_2` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_group_messages ADD INDEX group_id_fk_2 (group_id);
ALTER TABLE gr_group_messages ADD INDEX user_id_fk_2 (user_id);
ALTER TABLE gr_group_messages ADD INDEX group_message_id_fk_3 (parent_message_id);
ALTER TABLE gr_group_messages ADD INDEX idx__group_id_group_message_id (group_id);
ALTER TABLE gr_group_messages ADD INDEX idx__group_id_group_message_id (group_message_id);
ALTER TABLE gr_group_messages ADD INDEX idx__attachment_type_group_id_group_message_id (attachment_type);
ALTER TABLE gr_group_messages ADD INDEX idx__attachment_type_group_id_group_message_id (group_id);
ALTER TABLE gr_group_messages ADD INDEX idx__attachment_type_group_id_group_message_id (group_message_id);

CREATE TABLE `gr_group_messages` (
  `group_message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `original_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filtered_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_message` int(11) NOT NULL DEFAULT '0',
  `parent_message_id` bigint(20) DEFAULT NULL,
  `attachment_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reactions` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_message_id`),
  KEY `group_id_fk_2` (`group_id`),
  KEY `user_id_fk_2` (`user_id`),
  KEY `group_message_id_fk_3` (`parent_message_id`),
  KEY `idx__group_id_group_message_id` (`group_id`,`group_message_id`),
  KEY `idx__attachment_type_group_id_group_message_id` (`attachment_type`,`group_id`,`group_message_id`),
  CONSTRAINT `group_id_fk_2` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `group_message_id_fk_3` FOREIGN KEY (`parent_message_id`) REFERENCES `gr_group_messages` (`group_message_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_2` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('10','2','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 07:03:49','2024-05-30 07:03:49');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('11','2','1','<p><font style="vertical-align: inherit;"><font style="vertical-align: inherit;">какd</font></font></p><p><font style="vertical-align: inherit;"></font></p>','<p>какd</p>','0','','','','','','2024-05-30 10:22:01','2024-05-30 10:22:01');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('13','2','4','system_message','{"message":"joined_group","user_id":"4"}','1','','','','','','2024-05-30 14:27:12','2024-05-30 14:27:12');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('14','2','3','system_message','{"message":"joined_group","user_id":"3"}','1','','','','','','2024-05-30 14:44:04','2024-05-30 14:44:04');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('15','2','3','<p>sadsa</p>','<p>sadsa</p>','0','','','','','','2024-05-30 14:45:19','2024-05-30 14:45:19');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('16','2','3','<p>aaa</p>','<p>aaa</p>','0','','','','','','2024-05-30 14:45:57','2024-05-30 14:45:57');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('17','2','3','a','a','0','','','','','','2024-05-30 14:46:01','2024-05-30 14:46:01');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('18','2','3','a','a','0','','','','','','2024-05-30 14:46:05','2024-05-30 14:46:05');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('19','2','3','a'','a'','0','','','','','','2024-05-30 14:46:10','2024-05-30 14:46:10');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('20','2','3','a','a','0','','','','','','2024-05-30 14:46:15','2024-05-30 14:46:15');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('21','2','3','a','a','0','','','','','','2024-05-30 14:46:19','2024-05-30 14:46:19');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('22','2','3','aaa','aaa','0','','','','','','2024-05-30 14:46:26','2024-05-30 14:46:26');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('23','2','3','aaaaaaaaa','aaaaaaaaa','0','','','','','','2024-05-30 14:46:31','2024-05-30 14:46:31');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('24','2','3','aaaaaa','aaaaaa','0','','','','','','2024-05-30 14:46:36','2024-05-30 14:46:36');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('25','2','3','aaaaa','aaaaa','0','','','','','','2024-05-30 14:46:43','2024-05-30 14:46:43');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('26','2','3','<p>zaaa</p>','<p>zaaa</p>','0','','','','','','2024-05-30 14:46:52','2024-05-30 14:46:52');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('28','2','3','<p><b><i><u>sdfsdfsdf</u></i></b></p>','<p><b><i><u>sdfsdfsdf</u></i></b></p>','0','','','','','','2024-05-30 15:59:42','2024-05-30 15:59:42');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('29','2','3','asadsa','asadsa','0','','','','','','2024-05-30 15:59:46','2024-05-30 15:59:46');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('32','2','1','sdfsd','sdfsd','0','','','','','','2024-05-30 16:11:58','2024-05-30 16:11:58');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('33','3','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:09','2024-05-30 23:50:09');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('34','4','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:15','2024-05-30 23:50:15');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('35','5','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:21','2024-05-30 23:50:21');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('36','6','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:27','2024-05-30 23:50:27');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('37','7','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:32','2024-05-30 23:50:32');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('38','8','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:38','2024-05-30 23:50:38');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('39','9','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:45','2024-05-30 23:50:45');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('40','10','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:52','2024-05-30 23:50:52');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('41','11','1','system_message','{"message":"created_group","user_id":"1"}','1','','','','','','2024-05-30 23:50:58','2024-05-30 23:50:58');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('42','8','3','system_message','{"message":"joined_group","user_id":"3"}','1','','','','','','2024-05-30 23:51:32','2024-05-30 23:51:32');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('43','8','3','<p>123</p>','<p>123</p>','0','','','','','','2024-05-30 23:51:36','2024-05-30 23:51:36');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('44','8','3','<p>sada</p>','<p>sada</p>','0','','','','','','2024-05-30 23:53:55','2024-05-30 23:53:55');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('45','11','1','<p>sad</p>','<p>sad</p>','0','','','','','','2024-05-31 00:04:59','2024-05-31 00:04:59');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('46','2','3','<p>asda</p>','<p>asda</p>','0','','','','','','2024-05-31 00:05:16','2024-05-31 00:05:16');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('47','11','1','<p>asd</p>','<p>asd</p>','0','','','','','','2024-05-31 00:06:06','2024-05-31 00:06:06');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('48','10','1','<p>asd</p>','<p>asd</p>','0','','','','','','2024-05-31 00:06:27','2024-05-31 00:06:27');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('49','2','3','<p>sad</p>','<p>sad</p>','0','','','','','','2024-05-31 00:10:02','2024-05-31 00:10:02');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('50','2','3','sdf','sdf','0','','','','','','2024-05-31 00:10:08','2024-05-31 00:10:08');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('51','2','3','<p>12</p>','<p>12</p>','0','','','','','','2024-05-31 00:13:46','2024-05-31 00:13:46');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('52','2','1','3','3','0','','','','','','2024-05-31 00:14:28','2024-05-31 00:14:28');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('53','2','1','<p>фыв</p>','<p>фыв</p>','0','','','','','','2024-05-31 00:19:05','2024-05-31 00:19:05');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('54','2','1','<p>123</p>','<p>123</p>','0','','','','','','2024-05-31 00:19:50','2024-05-31 00:19:50');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('55','2','1','фф','фф','0','','','','','','2024-05-31 00:19:52','2024-05-31 00:19:52');
INSERT INTO gr_group_messages (`group_message_id`,`group_id`,`user_id`,`original_message`,`filtered_message`,`system_message`,`parent_message_id`,`attachment_type`,`attachments`,`link_preview`,`total_reactions`,`created_on`,`updated_on`) VALUES ('56','2','1','<p>123</p>','<p>123</p>','0','','','','','','2024-05-31 00:20:18','2024-05-31 00:20:18');



CREATE TABLE `gr_group_messages_reactions` (
  `group_message_reaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_message_id` bigint(20) NOT NULL,
  `reaction_id` int(11) NOT NULL COMMENT '1 = Like\r\n2 = Love\r\n3 = Haha\r\n4 = Wow\r\n5 = Sad\r\n6 = Angry',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_message_reaction_id`),
  KEY `group_message_id_fk_4` (`group_message_id`),
  KEY `user_id_fk_10` (`user_id`),
  CONSTRAINT `group_message_id_fk_4` FOREIGN KEY (`group_message_id`) REFERENCES `gr_group_messages` (`group_message_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_10` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_group_messages_reactions ADD INDEX group_message_id_fk_4 (group_message_id);
ALTER TABLE gr_group_messages_reactions ADD INDEX user_id_fk_10 (user_id);

CREATE TABLE `gr_group_messages_reactions` (
  `group_message_reaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `group_message_id` bigint(20) NOT NULL,
  `reaction_id` int(11) NOT NULL COMMENT '1 = Like\r\n2 = Love\r\n3 = Haha\r\n4 = Wow\r\n5 = Sad\r\n6 = Angry',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_message_reaction_id`),
  KEY `group_message_id_fk_4` (`group_message_id`),
  KEY `user_id_fk_10` (`user_id`),
  CONSTRAINT `group_message_id_fk_4` FOREIGN KEY (`group_message_id`) REFERENCES `gr_group_messages` (`group_message_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_10` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_group_roles` (
  `group_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_role_attribute` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'group_role',
  `role_hierarchy` int(11) NOT NULL DEFAULT '1',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_group_roles` (
  `group_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_role_attribute` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'group_role',
  `role_hierarchy` int(11) NOT NULL DEFAULT '1',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`group_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_group_roles (`group_role_id`,`string_constant`,`permissions`,`group_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('1','group_role_1','{"update":"group_roles","show_label":"","label_background_color":"#7B0909","label_text_color":"#FF0A0A","attribute":"banned_users","disabled":"no"}','banned_users','1','0','2024-05-15 00:37:38');
INSERT INTO gr_group_roles (`group_role_id`,`string_constant`,`permissions`,`group_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('2','group_role_2','{"update":"group_roles","show_label":"no","label_background_color":"#FF61BB","label_text_color":"#FFFFFF","attribute":"administrators","disabled":"","group":["edit_group","view_shared_files","view_shared_links","delete_group","video_chat","audio_chat"],"group_members":["view_group_members","view_currently_online","ban_users_from_group","unban_users_from_group","manage_user_roles","remove_group_members"],"messages":["send_message","send_audio_message","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","check_read_receipts","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","download_attachments","edit_own_message","edit_messages","delete_own_message","delete_messages","view_reactions","react_messages","reply_messages","forward_messages","mention_users","mention_everyone"]}','administrators','4','0','2024-05-15 00:37:58');
INSERT INTO gr_group_roles (`group_role_id`,`string_constant`,`permissions`,`group_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('3','group_role_3','{"update":"group_roles","show_label":"no","label_background_color":"#9EFF00","label_text_color":"#FFFFFF","attribute":"moderators","disabled":"","group":["view_shared_files","view_shared_links","video_chat","audio_chat"],"group_members":["view_group_members","view_currently_online","ban_users_from_group","unban_users_from_group","manage_user_roles","remove_group_members"],"messages":["send_message","send_audio_message","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","check_read_receipts","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","download_attachments","edit_own_message","edit_messages","delete_own_message","delete_messages","view_reactions","react_messages","reply_messages","forward_messages","mention_users"]}','moderators','3','0','2024-05-15 00:38:07');
INSERT INTO gr_group_roles (`group_role_id`,`string_constant`,`permissions`,`group_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('4','group_role_4','{"update":"group_roles","show_label":"no","label_background_color":"#FF4D55","label_text_color":"#FFFFFF","attribute":"default_group_role","disabled":"","group":["view_shared_files","view_shared_links"],"group_members":["view_currently_online"],"messages":["send_message","send_audio_message","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","check_read_receipts","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","download_attachments","edit_own_message","delete_own_message","view_reactions","react_messages","reply_messages","forward_messages","mention_users"]}','default_group_role','2','0','2024-05-30 14:36:02');



CREATE TABLE `gr_groups` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `group_category_id` bigint(20) NOT NULL DEFAULT '1',
  `meta_title` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_group` int(11) NOT NULL DEFAULT '0',
  `group_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_cover_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unleavable` int(11) NOT NULL DEFAULT '0',
  `who_all_can_send_messages` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_group` int(11) NOT NULL DEFAULT '0',
  `auto_join_group` int(11) NOT NULL DEFAULT '0',
  `enable_video_chat` int(11) NOT NULL DEFAULT '0',
  `enable_audio_chat` int(11) NOT NULL DEFAULT '0',
  `default_group_role` bigint(20) DEFAULT NULL,
  `total_members` bigint(20) NOT NULL DEFAULT '0',
  `suspended` int(11) NOT NULL DEFAULT '0',
  `group_header_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Disabled\r\n1 = Enabled',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `idx__secret_group_suspended_pin_group` (`secret_group`,`suspended`,`pin_group`),
  KEY `group_category_id_fk_1` (`group_category_id`),
  KEY `group_role_id_fk_1` (`default_group_role`),
  KEY `idx__group_id_group_category_id` (`group_id`,`group_category_id`),
  KEY `idx__created_by` (`created_by`),
  CONSTRAINT `group_category_id_fk_1` FOREIGN KEY (`group_category_id`) REFERENCES `gr_group_categories` (`group_category_id`) ON DELETE CASCADE,
  CONSTRAINT `group_role_id_fk_1` FOREIGN KEY (`default_group_role`) REFERENCES `gr_group_roles` (`group_role_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_groups ADD INDEX idx__secret_group_suspended_pin_group (secret_group);
ALTER TABLE gr_groups ADD INDEX idx__secret_group_suspended_pin_group (suspended);
ALTER TABLE gr_groups ADD INDEX idx__secret_group_suspended_pin_group (pin_group);
ALTER TABLE gr_groups ADD INDEX group_category_id_fk_1 (group_category_id);
ALTER TABLE gr_groups ADD INDEX group_role_id_fk_1 (default_group_role);
ALTER TABLE gr_groups ADD INDEX idx__group_id_group_category_id (group_id);
ALTER TABLE gr_groups ADD INDEX idx__group_id_group_category_id (group_category_id);
ALTER TABLE gr_groups ADD INDEX idx__created_by (created_by);

CREATE TABLE `gr_groups` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `group_category_id` bigint(20) NOT NULL DEFAULT '1',
  `meta_title` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_group` int(11) NOT NULL DEFAULT '0',
  `group_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_cover_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `group_bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unleavable` int(11) NOT NULL DEFAULT '0',
  `who_all_can_send_messages` varchar(199) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pin_group` int(11) NOT NULL DEFAULT '0',
  `auto_join_group` int(11) NOT NULL DEFAULT '0',
  `enable_video_chat` int(11) NOT NULL DEFAULT '0',
  `enable_audio_chat` int(11) NOT NULL DEFAULT '0',
  `default_group_role` bigint(20) DEFAULT NULL,
  `total_members` bigint(20) NOT NULL DEFAULT '0',
  `suspended` int(11) NOT NULL DEFAULT '0',
  `group_header_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Disabled\r\n1 = Enabled',
  `created_by` bigint(20) NOT NULL DEFAULT '0',
  `created_on` datetime DEFAULT NULL,
  `updated_on` datetime DEFAULT NULL,
  PRIMARY KEY (`group_id`),
  KEY `idx__secret_group_suspended_pin_group` (`secret_group`,`suspended`,`pin_group`),
  KEY `group_category_id_fk_1` (`group_category_id`),
  KEY `group_role_id_fk_1` (`default_group_role`),
  KEY `idx__group_id_group_category_id` (`group_id`,`group_category_id`),
  KEY `idx__created_by` (`created_by`),
  CONSTRAINT `group_category_id_fk_1` FOREIGN KEY (`group_category_id`) REFERENCES `gr_group_categories` (`group_category_id`) ON DELETE CASCADE,
  CONSTRAINT `group_role_id_fk_1` FOREIGN KEY (`default_group_role`) REFERENCES `gr_group_roles` (`group_role_id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('2','Global','global','','1','','','','0','','','','C2QJDiFt','0','["2","3","4"]','0','0','0','0','','3','0','0','1','2024-05-30 07:03:49','2024-05-31 00:20:18');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('3','G1','g1','','1','','','','0','','','','zCeXdVIF','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:09','2024-05-30 23:50:09');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('4','G2','g2','','1','','','','0','','','','7OunQAD0','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:15','2024-05-30 23:50:15');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('5','G3','g3','','1','','','','0','','','','pe2kRnUL','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:21','2024-05-30 23:50:21');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('6','G4','g4','','1','','','','0','','','','Mn3sVA9g','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:27','2024-05-30 23:50:27');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('7','G5','g5','','1','','','','0','','','','Oh5ZYfW8','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:32','2024-05-30 23:50:32');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('8','G6','g6','','1','','','','0','','','','9wUWRLma','0','["2","3","4"]','0','0','0','0','','2','0','0','1','2024-05-30 23:50:38','2024-05-30 23:53:55');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('9','G7','g7','','1','','','','0','','','','WyANeFtb','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:45','2024-05-30 23:50:45');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('10','G8','g8','','1','','','','0','','','','GLFgPB2w','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:52','2024-05-31 00:06:27');
INSERT INTO gr_groups (`group_id`,`name`,`slug`,`description`,`group_category_id`,`meta_title`,`meta_description`,`password`,`secret_group`,`group_picture`,`group_cover_pic`,`group_bg_image`,`secret_code`,`unleavable`,`who_all_can_send_messages`,`pin_group`,`auto_join_group`,`enable_video_chat`,`enable_audio_chat`,`default_group_role`,`total_members`,`suspended`,`group_header_status`,`created_by`,`created_on`,`updated_on`) VALUES ('11','G9','g9','','1','','','','0','','','','zRPmirtF','0','["2","3","4"]','0','0','0','0','','1','0','0','1','2024-05-30 23:50:58','2024-05-31 00:06:06');



CREATE TABLE `gr_language_strings` (
  `string_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_value` text COLLATE utf8mb4_unicode_ci,
  `string_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one-line',
  `skip_update` int(11) NOT NULL DEFAULT '0',
  `skip_cache` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`string_id`),
  KEY `language_id_fk` (`language_id`),
  KEY `idx__string_constant` (`string_constant`(16)),
  KEY `idx__skip_cache_skip_update_language_id` (`skip_cache`,`skip_update`,`language_id`),
  CONSTRAINT `language_id_fk` FOREIGN KEY (`language_id`) REFERENCES `gr_languages` (`language_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_language_strings ADD INDEX language_id_fk (language_id);
ALTER TABLE gr_language_strings ADD INDEX idx__string_constant (string_constant);
ALTER TABLE gr_language_strings ADD INDEX idx__skip_cache_skip_update_language_id (skip_cache);
ALTER TABLE gr_language_strings ADD INDEX idx__skip_cache_skip_update_language_id (skip_update);
ALTER TABLE gr_language_strings ADD INDEX idx__skip_cache_skip_update_language_id (language_id);

CREATE TABLE `gr_language_strings` (
  `string_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `string_value` text COLLATE utf8mb4_unicode_ci,
  `string_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'one-line',
  `skip_update` int(11) NOT NULL DEFAULT '0',
  `skip_cache` int(11) NOT NULL DEFAULT '0',
  `language_id` bigint(20) NOT NULL DEFAULT '1',
  PRIMARY KEY (`string_id`),
  KEY `language_id_fk` (`language_id`),
  KEY `idx__string_constant` (`string_constant`(16)),
  KEY `idx__skip_cache_skip_update_language_id` (`skip_cache`,`skip_update`,`language_id`),
  CONSTRAINT `language_id_fk` FOREIGN KEY (`language_id`) REFERENCES `gr_languages` (`language_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3033 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1','control_storage','Full Control Access to User&#039;s Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2','reported','Reported','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3','idle','Idle','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('4','view_currently_online','View Currently Online','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('5','on_private_message','Someone send a Private Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('6','playlist','Playlist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('7','allow_sharing_links','Allow Sharing Links','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('8','ban_from_group','Ban From Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('9','title','Title','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('10','send_audio_message','Send Audio Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('11','exceeded_max_msg_length','Exceeded Maximum Message Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('12','mentioned_group_chat','Mentioned you in group chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('13','site_name','Site Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('14','not_found_page_description','The resource you are looking for might have been removed, had its name changed, or is temporarily unavailable.','multi-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('15','reply','Reply','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('16','role_name','Role Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('17','send_mail','Send Mail','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('18','onesignal_safari_web_id','OneSignal Safari Web ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('19','updated_group_info','Updated Group Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('20','create_unleavable_group','Create Unleavable Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('21','reset_password_email_subject','Recover your Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('22','invited','Invited','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('23','delete','Delete','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('25','guest_users','Guest Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('26','banned','Banned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('27','progressive_web_application','Progressive Web Application','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('28','guest_login_text','Create a Guest User account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('29','favicon','Favicon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('30','pin_group','Pin Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('31','blacklist','Blacklist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('32','reset_password_email_button_label','Reset Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('33','advert_placement','Ad Placement','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('34','report','Report','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('35','primary_font_size','Primary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('36','access_time','Access Time','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('37','edit_profile','Edit Profile','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('38','long_text_field','Long Text','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('39','image','Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('40','unban_from_site_confirmation','Are you sure you want to allow this user from accessing site ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('41','public_group','Public Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('42','protected_group','Protected Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('43','edit_role','Edit Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('44','dropdown_field','Dropdown','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('45','delete_own_group','Delete their own Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('46','minutes','Minutes','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('47','default_skin_mode','Default Color Scheme','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('48','image_files','Image Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('49','view_group_members','View Group Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('50','minimal-ui','Minimal UI','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('51','general_settings','General Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('52','someone','Someone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('53','login','Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('54','secondary_font_size','Secondary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('55','roles','Site Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('56','unban_ip_addresses','Unban IP addresses','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('57','create_site_role','Create Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('58','ban','Ban','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('59','unban_from_group','Unban from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('60','link_target','Link Target','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('61','disagree','Disagree','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('62','view_groups_without_login','View Public Groups without Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('63','delete_access_log_confirmation','Are you sure you want to remove this Access Log ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('64','temporarily_banned_from_group','Temporarily Banned from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('65','push_notification_icon','Push Notification Icon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('66','ignored','Ignored','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('67','core_settings','Core Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('68','minimum_username_length','Minimum Username Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('69','quinary_border_color','Quinary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('70','senary_text_color','Senary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('71','preview_attachments','Preview Attachments','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('72','show_on_chat_page','Show on Chat Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('73','role','Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('74','group_url','Group URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('75','minimum_message_length','Minimum Message Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('76','manage_user_access_logs','Manage User Access Logs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('77','strict_mode','Strict Mode','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('78','advert_name','Advert Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('79','heading','Heading','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('80','on_user_mention_group_chat','Someone mentions user in Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('81','reset_password_email_heading','Trouble signing in?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('82','signup_text','Create a new Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('83','email_verified','You&#039;ve successfully verified your email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('84','joined','Joined','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('85','select_a_page','Select a Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('86','create_sticker_pack','Create Sticker Pack','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('87','datetime','Date &amp; Time','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('88','add_to_group','Add to Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('89','group_join_limit','Maximum Number of Groups a User can Join','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('90','infotip_footer_tag','This will be printed before the &lt;/body&gt; closing tag','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('91','unjoined','Unjoined','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('92','blocked','Blocked','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('93','quaternary_border_color','Quaternary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('94','search_here','Search here','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('95','unblock_user_confirmation','Are you sure you want to unblock this user ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('96','add_audio_files','Add Audio Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('97','view','View','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('98','none','None','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('99','confirm_export','Do You Want to Export?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('100','other','Other','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('101','confirm_delete_all_messages','Are you sure you want to delete all chat messages?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('102','smtp_port','SMTP Port','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('103','unignore_user_confirmation','Are you sure you want to remove this user from Ignore list ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('104','custom_page','Custom Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('105','pwa_description','Description','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('106','sending','Sending','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('107','attribute','Attribute','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('108','view_joined_groups','View Joined Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('109','agree','Agree','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('110','custom_field_1','About Me','one-line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('111','go_back','Go Back','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('112','message','Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('113','edit','Edit','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('114','instagram_url','Instagram URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('115','appearance','Appearance','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('116','radio_stations','Radio Stations','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('117','super_privileges','Super Privileges','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('118','date_field','Date','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('119','spam','Spam','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('120','ban_from_site_confirmation','Are you sure you want to ban this user from accessing site ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('121','empty_profile','Empty Profile','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('122','upload','Upload','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('123','verification_email_button_label','Verify your email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('124','images','Images','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('125','gif_search_engine','GIF Search Engine','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('126','password_protect','Password Protect','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('127','not_found_page_expression','Oops!','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('128','moderator','Moderator','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('129','pwa_short_name','Application Short Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('130','not_a_group_member_message','You are not a member of this Group. Click here to Join.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('131','ffmpeg_binaries_path','FFmpeg Binaries Path','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('132','description','Description','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('133','login_settings','Login Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('134','ip_address','IP address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('135','send_on_behalf','Send Messages on Behalf','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('136','group_role','Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('137','edit_badge','Edit Badge','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('138','login_as_user','Login as User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('139','site_roles','Site Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('140','full_name','Full Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('141','block_user','Block User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('142','disable_private_messages','Disable Private Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('143','enable','Enable','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('144','mention','@Mention','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('145','ban_users_from_site','Ban Users from Site','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('146','string_constant','String Constant','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('147','pwa_display','Display Mode','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('148','deactivated','Deactivated','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('149','online','Online','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('150','messages_per_call','Messages per Call','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('151','giphy','GIPHY','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('152','unblocked','Unblocked','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('153','users','Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('154','manage_group_roles','Manage Group Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('155','storage_limit_exceeded','Storage Limit Exceeded','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('156','ban_ip_addresses','Ban IP addresses','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('157','shared_file','Shared a File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('158','rejected','Rejected','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('159','leave_group','Leave Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('160','chat','Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('161','custom_site_role','Custom Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('162','complaints','Complaints','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('163','secondary_border_color','Secondary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('164','attach','Share Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('165','upload_files','Upload Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('166','unbanned_from_group','Unbanned From Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('167','radio_station','Radio Station','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('168','reply_messages','Reply Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('169','options','Options','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('170','on_new_site_badges','User awarded with new badge','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('171','custom_field_5','Location','one-line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('172','access_token_expired','Access Token is not valid or has expired','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('173','manage_user_roles','Manage User Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('174','edit_sticker_pack','Edit Sticker Pack','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('175','download','Download','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('176','guest_login','Guest Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('177','remove_from_group','Remove from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('178','tenor','Tenor','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('179','manage_site_roles','Manage Site Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('180','reactions','Reactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('181','timezone','TimeZone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('182','attach_from_storage','Attach from Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('183','short_text_field','Short Text','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('184','identity_provider','Identity Provider','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('185','went_wrong','Something Went Wrong','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('186','language','Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('187','system_default','Default','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('188','welcome_screen_heading','Hello, and a warm welcome to you','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('189','requires_minimum_username_length','Requires Minimum Username Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('190','video_files','Video Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('191','file_expired','File Expired or Doesn&#039;t exist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('192','onesignal_app_id','OneSignal APP ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('193','login_as_guest','Login as Guest','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('194','user_email_verification','User Email Verification','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('195','info','Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('196','deactivate_account','Deactivate Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('197','system_variables','System Variables','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('198','pwa_icon','PWA icon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('199','shortcodes','Shortcodes','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('200','back_to_login','Back to Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('201','default_font','Default Font','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('202','login_text','Sign In to Your Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('203','confirm_delete','Are you sure you want to delete the selected item(s) ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('204','load_more','Load More','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('205','play_music','Play Music','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('206','ffprobe_binaries_path','FFProbe Binaries Path','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('207','invite_users','Invite Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('208','sender','Sender','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('209','confirm_join','Are you sure you would like to be part of this group?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('210','cron_job','Cron Job','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('211','send_as_user','Send as another User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('212','unban','Unban','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('213','change_to_idle_status_after','Change to Idle Status After (Minutes)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('214','tertiary_border_color','Tertiary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('215','audio_player','Audio Player','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('216','smtp_authentication','SMTP Authentication','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('217','yesterday','Yesterday','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('218','screenshot','Screenshot','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('219','file_name','File Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('220','delete_own_message','Delete their own Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('221','group_info','Group Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('222','verification_code_expired','Verification code is not valid or has expired','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('223','offline_page_expression','Oops!','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('224','unleavable','Unleavable','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('225','member','Member','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('226','new','New','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('227','whitelist','Whitelist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('228','confirm','Confirm','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('229','open','Open','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('230','banned_till','Banned Till','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('231','onesignal_rest_api_key','OneSignal REST API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('232','offline_page_description','Sorry, it looks like you have lost your internet connection or the server is not responding at the moment. Please refresh the page or try again later.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('233','logout','Logout','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('234','ignore_user_confirmation','Are you sure you want to ignore this user ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('235','verification_email_subject','Confirm your email address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('236','created_group','Created Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('237','sender_name','Sender Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('238','group_icon','Group Icon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('239','add_audio','Add Audio','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('240','account_not_found','Account Does Not Exist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('241','on_reply_group_messages','Someone replies to the user messages (Group Chat)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('242','visit','Visit','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('243','send_message','Send Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('244','exceeded_max_file_upload_size','Exceeded Maximum File Upload Size Limit','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('245','unignore_user','Unignore User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('246','audio_files','Audio Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('247','manage_avatars','Manage Avatars','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('248','max_file_upload_size','Max File Upload Size (MB)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('249','other_features','Other Features','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('250','who_all_can_send_messages','Who all can Send Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('251','newest','Newest','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('252','social_login_providers','Social Login Providers','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('253','providers','Providers','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('254','minimum_score_required_wad_content','Minimum Score Required [Weapons, Alcohol &amp; Drugs] %','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('255','you','You','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('256','default_notification_tone','Default Notification Tone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('257','quaternary_font_size','Quaternary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('258','manage_custom_pages','Manage Custom Pages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('259','site_role','Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('260','last_login','Last Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('261','delete_shared_files','Delete Shared Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('262','header','Header','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('263','other_files','Other Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('264','user_registration','User Registration','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('265','callback_url','Callback URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('266','invalid_email_address','Invalid Email Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('267','block_user_confirmation','Are you sure you want to block this user ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('268','allowed_file_formats','Allowed File Formats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('269','cover_pic','Cover Pic','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('270','deleted','Deleted','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('271','remove_user','Remove User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('272','web_push_mentioned_user_message','Mentioned you in Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('273','new_password','New Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('274','stickers','Stickers','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('275','firewall','Firewall','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('276','ignore_user','Ignore User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('277','create_secret_group','Create Secret Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('278','view_message','View Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('279','appid','APP/Client ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('280','all','All','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('281','current_role','Current Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('282','landing_page_footer_block_two_heading','Contact','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('283','group','Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('284','pwa_name','Application Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('285','left_group','Left the Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('286','standalone','Standalone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('287','upload_custom_avatar','Upload Custom Avatar','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('288','signup','Signup','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('289','custom_field_6_options','{"DZ":"Algeria","AO":"Angola","BJ":"Benin","BW":"Botswana","BF":"Burkina Faso","BI":"Burundi","CM":"Cameroon","CV":"Cape Verde","CF":"Central African Republic","TD":"Chad","KM":"Comoros","CD":"Congo [DRC]","CG":"Congo [Republic]","DJ":"Djibouti","EG":"Egypt","GQ":"Equatorial Guinea","ER":"Eritrea","ET":"Ethiopia","GA":"Gabon","GM":"Gambia","GH":"Ghana","GN":"Guinea","GW":"Guinea-Bissau","CI":"Ivory Coast","KE":"Kenya","LS":"Lesotho","LR":"Liberia","LY":"Libya","MG":"Madagascar","MW":"Malawi","ML":"Mali","MR":"Mauritania","MU":"Mauritius","YT":"Mayotte","MA":"Morocco","MZ":"Mozambique","NA":"Namibia","NE":"Niger","NG":"Nigeria","RW":"Rwanda","RE":"R\u00e9union","SH":"Saint Helena","SN":"Senegal","SC":"Seychelles","SL":"Sierra Leone","SO":"Somalia","ZA":"South Africa","SD":"Sudan","SZ":"Swaziland","ST":"S\u00e3o Tom\u00e9 and Pr\u00edncipe","TZ":"Tanzania","TG":"Togo","TN":"Tunisia","UG":"Uganda","EH":"Western Sahara","ZM":"Zambia","ZW":"Zimbabwe","AQ":"Antarctica","BV":"Bouvet Island","TF":"French Southern Territories","HM":"Heard Island and McDonald Island","GS":"South Georgia and the South Sandwich Islands","AF":"Afghanistan","AM":"Armenia","AZ":"Azerbaijan","BH":"Bahrain","BD":"Bangladesh","BT":"Bhutan","IO":"British Indian Ocean Territory","BN":"Brunei","KH":"Cambodia","CN":"China","CX":"Christmas Island","CC":"Cocos [Keeling] Islands","GE":"Georgia","HK":"Hong Kong","IN":"India","ID":"Indonesia","IR":"Iran","IQ":"Iraq","IL":"Israel","JP":"Japan","JO":"Jordan","KZ":"Kazakhstan","KW":"Kuwait","KG":"Kyrgyzstan","LA":"Laos","LB":"Lebanon","MO":"Macau","MY":"Malaysia","MV":"Maldives","MN":"Mongolia","MM":"Myanmar [Burma]","NP":"Nepal","KP":"North Korea","OM":"Oman","PK":"Pakistan","PS":"Palestinian Territories","PH":"Philippines","QA":"Qatar","SA":"Saudi Arabia","SG":"Singapore","KR":"South Korea","LK":"Sri Lanka","SY":"Syria","TW":"Taiwan","TJ":"Tajikistan","TH":"Thailand","TR":"Turkey","TM":"Turkmenistan","AE":"United Arab Emirates","UZ":"Uzbekistan","VN":"Vietnam","YE":"Yemen","AL":"Albania","AD":"Andorra","AT":"Austria","BY":"Belarus","BE":"Belgium","BA":"Bosnia and Herzegovina","BG":"Bulgaria","HR":"Croatia","CY":"Cyprus","CZ":"Czech Republic","DK":"Denmark","EE":"Estonia","FO":"Faroe Islands","FI":"Finland","FR":"France","DE":"Germany","GI":"Gibraltar","GR":"Greece","GG":"Guernsey","HU":"Hungary","IS":"Iceland","IE":"Ireland","IM":"Isle of Man","IT":"Italy","JE":"Jersey","XK":"Kosovo","LV":"Latvia","LI":"Liechtenstein","LT":"Lithuania","LU":"Luxembourg","MK":"Macedonia","MT":"Malta","MD":"Moldova","MC":"Monaco","ME":"Montenegro","NL":"Netherlands","NO":"Norway","PL":"Poland","PT":"Portugal","RO":"Romania","RU":"Russia","SM":"San Marino","RS":"Serbia","CS":"Serbia and Montenegro","SK":"Slovakia","SI":"Slovenia","ES":"Spain","SJ":"Svalbard and Jan Mayen","SE":"Sweden","CH":"Switzerland","UA":"Ukraine","GB":"United Kingdom","VA":"Vatican City","AX":"\u00c5land Islands","AI":"Anguilla","AG":"Antigua and Barbuda","AW":"Aruba","BS":"Bahamas","BB":"Barbados","BZ":"Belize","BM":"Bermuda","BQ":"Bonaire","VG":"British Virgin Islands","CA":"Canada","KY":"Cayman Islands","CR":"Costa Rica","CU":"Cuba","CW":"Curacao","DM":"Dominica","DO":"Dominican Republic","SV":"El Salvador","GL":"Greenland","GD":"Grenada","GP":"Guadeloupe","GT":"Guatemala","HT":"Haiti","HN":"Honduras","JM":"Jamaica","MQ":"Martinique","MX":"Mexico","MS":"Montserrat","AN":"Netherlands Antilles","NI":"Nicaragua","PA":"Panama","PR":"Puerto Rico","BL":"Saint Barth\u00e9lemy","KN":"Saint Kitts and Nevis","LC":"Saint Lucia","MF":"Saint Martin","PM":"Saint Pierre and Miquelon","VC":"Saint Vincent and the Grenadines","SX":"Sint Maarten","TT":"Trinidad and Tobago","TC":"Turks and Caicos Islands","VI":"U.S. Virgin Islands","US":"United States","AR":"Argentina","BO":"Bolivia","BR":"Brazil","CL":"Chile","CO":"Colombia","EC":"Ecuador","FK":"Falkland Islands","GF":"French Guiana","GY":"Guyana","PY":"Paraguay","PE":"Peru","SR":"Suriname","UY":"Uruguay","VE":"Venezuela","AS":"American Samoa","AU":"Australia","CK":"Cook Islands","TL":"East Timor","FJ":"Fiji","PF":"French Polynesia","GU":"Guam","KI":"Kiribati","MH":"Marshall Islands","FM":"Micronesia","NR":"Nauru","NC":"New Caledonia","NZ":"New Zealand","NU":"Niue","NF":"Norfolk Island","MP":"Northern Mariana Islands","PW":"Palau","PG":"Papua New Guinea","PN":"Pitcairn Islands","WS":"Samoa","SB":"Solomon Islands","TK":"Tokelau","TO":"Tonga","TV":"Tuvalu","UM":"U.S. Minor Outlying Islands","VU":"Vanuatu","WF":"Wallis and Futuna"}','multi_line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('290','share_screenshot','Share Screenshot','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('291','import_json','Select JSON File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('292','site_description','Site Description','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('293','remove_custom_bg','Remove Custom BG','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('294','logo','Logo','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('295','view_profile','View Profile','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('296','add_site_members','Add Site Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('297','disable','Disable','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('298','pwa_background_color','Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('299','email_settings','Email Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('300','create_group','Create Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('301','label_background_color','Label Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('302','all_file_formats','All File Formats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('303','link_type','Link Type','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('304','today','Today','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('305','gravatar','Gravatar','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('306','invite','Invite','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('307','create_role','Create Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('308','block_users','Block Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('310','tertiary_font_size','Tertiary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('311','online_users','Online Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('312','custom_login_url','Custom Login URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('313','create_user','Create User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('314','show_only_on','Show Only On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('315','senary_border_color','Senary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('316','identifier','Identifier','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('317','react_messages','React to Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('318','update','Update','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('319','default_site_role','Default Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('320','advert_min_height','Minimum Height (px)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('321','site_records','Site Records','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('322','slug_already_exists','Slug Already Exists','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('323','verification_email_heading','Email Confirmation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('324','avatars','Avatars','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('325','smtp_password','SMTP Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('326','forgot_password_text','We will send you password recovery instruction to the email address associated with your account.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('327','open_in_new_tab','Open in New Tab','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('328','settings','Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('329','username_already_exists','Username Already Exists','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('330','edit_provider','Edit Provider','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('331','show','Show','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('332','smtp_username','SMTP Username','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('333','reset_password_success_message','We have sent you an e-mail containing your password reset link. Click the link in the email to create a new password. ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('334','temporarily_banned','Temporarily Banned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('335','generate_link_preview','Generate Link Preview','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('336','google_analytics_id','Google Analytics ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('337','device_blocked','Your Device had been Blocked. Maximum Login Attempts Exceeded. Try again in one hour.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('338','edit_group','Edit Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('339','uploading','Uploading','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('340','inbox','Inbox','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('341','pwa_theme_color','Theme Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('342','login_link_email_heading','Welcome To The Community','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('343','onesignal','OneSignal','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('344','create_protected_group','Create Protected Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('345','minimum_score_required_graphic_violence_gore','Minimum Score Required [Graphic Violence &amp; Gore] %','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('346','documents','Documents','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('347','files','Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('348','gifs_per_load','GIFs Per Load','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('349','upload_avatar','Upload Avatar','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('350','wait_for_profile_approval','Your Account is currently pending approval. Once your profile has been approved you can login.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('351','upload_file','Upload File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('352','unignore','Unignore','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('353','inappropriate','Inappropriate','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('354','custom_url_on_logout','Custom URL on Logout','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('355','search_messages','Search messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('356','non_latin_usernames','Non Latin Usernames','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('357','static_image','Static Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('358','tertiary_text_color','Tertiary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('359','chat_message','Chat Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('360','report_message','Report Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('361','change_full_name','Change Full Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('362','hero_section_animation','Hero Section [Animation]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('363','admin','Admin','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('364','id','ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('365','reload','Reload','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('366','infotip_select_multiple_files','To select multiple files, hold the Ctrl (PC) or Command (Mac) key and using your trackpad or external mouse, click on all the other files you wish to select one by one.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('367','field_options','Field Options','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('368','track_status','Track Status','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('369','left_panel_content_on_page_load','Content to Show on Page Load [Left Panel]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('370','group_members','Group Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('371','nickname','Nickname','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('372','view_friends','View Friends','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('373','notification_tone','Notification Tone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('374','create_user_if_not_exists','Create User if not exists','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('375','hide_group_member_list_from_non_members','Hide Group Member list from Non members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('376','on_group_invitation','Someone send an invitation to join a group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('377','download_file','Download File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('378','side_navigation','Side Navigation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('379','smtp_host','SMTP Host','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('380','edit_own_group','Edit own Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('381','add','Add','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('382','on_group_unread_count_change','On Group Unread Count Change','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('383','set_as_default','Set as Default','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('384','not_found_page_button','Go To Homepage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('385','image_moderation','Image Moderation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('386','go_online','Go Online','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('387','add_members','Add Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('388','display_full_file_name_of_attachments','Display full file name of Attachment(s)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('389','exceeded_group_join_limit','Exceeded Maximum Number of Groups You can Join','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('390','created_on','Created On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('391','profile','Profile','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('392','confirm_email_address','You are required to verify your email address. We have sent an email with a confirmation link to your email address.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('393','ban_ip_addresses_confirmation','Are you sure you want to block user IP addresses ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('394','landing_page_groups_section_heading','Trending Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('395','invalid_login','Invalid Login Credentials','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('396','or_login_using','or login using','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('397','reset_password_email_content','Resetting your password is easy. Just press the button below and you will be auto logged in to your account. If you did not make this request then please ignore this email.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('398','user_agent','User Agent','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('399','monitor','Monitor','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('400','show_on_entry_page','Show on Entry Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('401','attach_gifs','Attach GIFs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('402','assign','Assign','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('403','landing_page_hero_section_heading','Much more than just another chat site','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('404','auto_join_group','Auto Add Users on Signup','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('405','offline_page_title','You are Offline','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('406','action_taken','Action Taken','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('407','unban_ip_addresses_confirmation','Are you sure you want to allow user IP addresses ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('408','not_logged_in_message','You are not logged in. Click here to log in.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('409','link_field','Link','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('410','open_in_same_window','Open in Same Window','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('411','your_friend_since','Your Friend Since','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('412','access_denied_message','403 Forbidden You don&#039;t have permission to access.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('413','exceeds_username_length','Exceeds Maximum Username Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('414','initiate_private_chat','Initiate Private Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('415','septenary_text_color','Septenary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('416','updated','Updated','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('417','left_side_content','Left Side Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('418','mail_login_info','Mail Login Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('419','view_online_users','View Online Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('420','smtp_protocol','SMTP (SSL/TLS)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('421','members','Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('422','enabled','Enabled','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('423','delete_messages','Delete Msgs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('424','email_address','Email Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('425','set_custom_background','Set Custom background','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('426','pwa_settings','PWA Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('427','bottom','Bottom','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('428','replied_group_message','Posted a response to your group chat message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('429','mobile_page_transition','Mobile Page Transition','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('430','sightengine_api_user','Sightengine API user','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('431','wad_content','Weapons, Alcohol &amp; Drugs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('432','social_login','Social Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('433','verification_email_content','Before you get started, we need to validate your email address. Please click on the button below to verify your email address. If you did not make this request then please ignore this email.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('434','create_advert','Create Advert','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('435','badge_title','Badge Title','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('436','switch','Switch','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('437','moderation','Moderation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('438','footer_logo','Footer Logo','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('439','choose_avatar','Choose an Avatar','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('440','req_min_msg_length','Required Minimum number of characters','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('441','undenary_text_color','Undenary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('442','timestamp','Timestamp','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('443','banned_page_description','Your have been banned from using this website. If you think your account was banned by mistake, please email us and we&#039;ll look into your case.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('444','import','Import','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('445','quaternary_bg_color','Quaternary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('446','audio','Audio','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('447','check_read_receipts','Check Read Receipts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('448','system_messages_groups','System Messages (Groups)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('449','click_to_view_info','Click here to view info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('450','comments_by_reviewer','Comments by Reviewer','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('451','group_name','Group Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('452','add_custom_field','Add Field','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('453','daily_send_limit_group_messages','Daily Send Limit [Group Messages]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('454','cancel_request','Cancel Request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('455','iso_language_code','ISO Language Code','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('456','default_group_role','Default Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('457','add_menu_item','Add Menu Item','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('459','denary_border_color','Denary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('460','posted_by','Posted by','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('461','download_attachments','Download Attachments','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('462','rebuild','Rebuild','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('463','unverified_users','Unverified Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('464','language_text_direction','Text direction','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('465','chat_page_boxed_layout','Boxed Layout [Chat Page]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('466','supported_image_formats','Supported Image Formats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('467','load_group_info_on_group_load','Load Group Info on Group Load','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('468','minimum_score_required_explicit_nudity','Minimum Score Required [Explicit Nudity] %','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('469','remove_cover_pic','Remove Cover Pic','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('470','exporting','Exporting','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('471','login_as_admin','Login as Admin','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('472','maximum_sending_rate_exceeded','Maximum Sending Rate Exceeded','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('473','webpushr_rest_api_key','Webpushr REST API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('474','yes','Yes','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('475','remove','Remove','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('476','loading','Loading','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('477','people_nearby_feature','People Nearby Feature','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('478','password','Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('479','total_groups','Total Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('480','edit_custom_field','Edit Custom Field','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('481','media','Media','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('482','senary_font_size','Senary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('483','body','Body','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('484','read_receipts','Read Receipts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('485','send_push_notification','Send Push Notification','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('486','icon','Icon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('487','review_complaints','Review Complaints','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('488','display_username_group_chats','Display Username instead of Full Name in Group Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('489','browser','Browser','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('490','unsuspend','Unsuspend','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('491','group_headers','Group Headers','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('492','cancel','Cancel','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('493','cookie_consent','Cookie Consent','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('494','cookie_consent_modal_title','Cookie Consent','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('495','landing_page_faq_question_3','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('496','chats','Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('497','secret_key','Secret Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('498','remove_from_group_confirmation','Are you sure you want to remove this user from Group ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('499','style_sheets','Style Sheets','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('500','info_panel','Info Panel','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('501','clear_chat','Clear Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('502','name_color','Name Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('503','new_user_approval','New User Approval (Manually Approve New Users)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('504','menu_title','Menu Title','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('505','files_uploaded','Files Uploaded','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('506','set_auto_join_groups','Set Auto Join Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('507','ad_free_account','Ad-Free Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('508','webpushr_authentication_token','Webpushr Authentication Token','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('509','menu_item_visibility','Menu Item Visibility','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('510','on_leaving_group_chat','Someone leaves Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('511','ssl','SSL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('512','voice_message','Voice Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('513','banned_users','Banned Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('514','gif_content_filtering','GIF Content Filtering','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('515','stream_url','Stream URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('516','on_load_guest_login_window','Open Guest Login Window on Load (Login Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('517','username_condition','Your username must contain at least one letter','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('518','show_group_label','Show Group Role Next to Chat Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('519','octonary_bg_color','Octonary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('520','custom_field_6','Country','one-line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('521','listen_music','Listen Music','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('522','entry_page','Entry Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('523','exceeds_full_name_length','Full Name character length limit exceeded','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('524','error_uploading','Error Uploading Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('525','delete_account','Delete Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('526','share','Share','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('527','edit_menu_item','Edit Menu Item','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('528','welcome_screen','Welcome Screen','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('529','remove_password','Remove Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('530','unban_from_group_confirmation','Are you sure you want to unban this user from Group ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('531','onesignal_prompt_accept_button','Allow','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('532','embed_code','Embed Code','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('533','moderators','Moderators','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('534','customizer','Customizer','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('535','answer','Answer','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('536','landing_page_footer_block_two_description','+44 1632 960811hello@yourdomain.com','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('537','css_code','CSS Code','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('538','delete_all_files_confirmation','Are you sure you want to delete all files ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('539','view_public_groups','View Public Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('540','infotip_header_tag','This will be printed in the &lt;head&gt; section','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('541','hero_section_description','Hero Section [Description]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('542','message_id','Message ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('543','display_username_private_chats','Display Username instead of Full Name in Private Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('544','delete_private_messages','Delete Private Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('545','create_account','Create Account','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('546','badge_image','Badge Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('547','badges','Badges','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('548','show_on_landing_page_header','Show on Landing Page [Header]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('549','visible','Visible','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('550','ftp_storage','FTP Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('551','location','Location','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('552','edit_group_header','Edit Group Header','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('553','on_join_group_chat','Someone joins Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('554','show_only_on_specific_language','Show only on Specific Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('555','hide_groups_on_group_url','Hide groups when a user visits through the group URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('556','sticker','Sticker','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('557','edit_users','Edit Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('558','maximum_username_length','Maximum Username Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('559','set_cover_pic','Set Cover Pic','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('560','forgot_password','Forgot Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('561','default_txt','Default','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('562','not_assigned','Not Assigned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('563','landing_page_faq_question_2_answer','02 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('564','review','Review','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('565','rebuild_cache','Rebuild Cache','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('566','is_typing','is typing','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('567','landing_page_faq_question_3_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('568','unbanned','Unbanned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('569','zero_equals_unlimited','(0 = Unlimited)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('570','offensive_signs_gestures','Offensive Signs &amp; Gestures','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('571','twitter_url','Twitter URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('572','icon_img','Icon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('573','view_shared_links','View Shared Links','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('574','captcha_secret_key','Captcha Secret Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('575','filter','Filter','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('576','no_results_found','No Results Found','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('577','ffmpeg','FFmpeg','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('578','high','High','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('579','permission_denied','Permission Denied','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('580','confirm_your_email_address','You are required to verify your email address. We have sent an email with a confirmation link to your email address. In order to complete the sign-up process, please click the confirmation link.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('581','group_chats','Group Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('582','view_group','View Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('583','on_private_conversation_unread_count_change','On Private Conversation Unread Count Change','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('584','site_role_4','Banned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('585','command','Command','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('586','cloud_storage_api_key','Access Key ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('587','entry_page_form_header','Form Header (Entry Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('588','sightengine_api_secret','Sightengine API Secret','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('589','site_role_1','Unverified','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('590','sitemap','Sitemap','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('591','group_invitation','Invited you to Join the Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('592','form','Form','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('593','custom_field_4','Website','one-line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('594','not_found','Not Found','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('595','export_chat','Export Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('596','groups_section_description','Groups Section [Description]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('597','infotip_body_tag','This will be printed after the &lt;body&gt; opening tag','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('598','external_link','External Link','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('599','compress_video_files','Compress Video Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('600','landing_page_footer_block_one_heading','Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('601','unblock','Unblock','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('602','landing_page_faq_section','FAQ Section (Landing Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('603','pending_approval','Pending Approval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('604','search','Search','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('605','resend_email','Resend Email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('606','no','No','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('607','quinary_bg_color','Quinary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('608','link_text','Link Text','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('609','account_reactivated','Account Reactivated. Welcome Back','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('610','view_statistics','View Statistics','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('611','suspend','Suspend','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('612','cloud_storage_secret_key','Secret Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('613','message_textarea_placeholder','Write Here…','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('614','group_header','Group Header','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('615','menu_order','Menu Order','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('616','group_join_confirmation','Group Join Confirmation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('617','cron_jobs','Cron Jobs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('618','webpushr','Webpushr','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('619','groups_section_status','Groups Section [Status]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('620','dmy_format','Day Month Year','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('621','manage_social_login','Manage Social Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('622','view_nearby_users','View Nearby Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('623','on_getting_unbanned_from_group','Someone unbanned from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('624','site_controls','Site Controls','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('625','image_removal_criteria','Delete Images that contain','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('626','statistics','Statistics','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('627','maximum_login_attempts','Maximum Login Attempts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('628','group_chat','Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('629','password_doesnt_match','Password doesn&#039;t match the Confirm password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('630','message_settings','Message Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('631','duodenary_text_color','Duodenary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('632','view_full_name','View Full Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('633','play_notification_sound','Play a Notification Sound','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('634','clear_realtime_activity_logs','Clear Activity Logs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('635','banned_page_expression','Ouch!','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('636','whats_wrong','What&#039;s Wrong with this','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('637','required_field','Required Field','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('638','hero_section_heading','Hero Section [Heading]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('639','storage','Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('640','default_language','Default Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('641','site_notifications','Site Notifications','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('642','meta_description','Meta Description','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('644','cloud_storage_region','Region','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('645','records_per_call','Site Records per Call','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('646','on_removal_from_group','Someone removed from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('647','compress_image_files','Compress Image Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('648','web_app_manifest','Web App Manifest','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('649','delete_user_files','Delete User Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('650','chat_window','Chat Window','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('651','embed','Embed','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('652','type','Type','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('653','email_exists','Email Already Exists','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('654','adverts','Adverts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('655','join_group','Join Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('656','access_denied_non_member_message','You are not part of this Group. Join Group to View Messages.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('657','banned_from_group','Banned from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('658','view_site_users','View Site Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('659','group_suspended','Sorry, this group has been Suspended.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('660','moderation_settings','Moderation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('661','resend_email_on_error','Account already verified or account does not exist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('662','social_share_image','Default Social Share Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('663','partial_nudity','Partial Nudity','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('664','message_non_friends','Message Non-Friends','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('665','switch_languages','Switch Languages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('666','friend_system','Friend System','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('667','entry_page_form_footer','Form Footer (Entry Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('668','rtl','Right to Left','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('669','confirm_password','Confirm Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('670','sort','Sort','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('671','time_pm','PM','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('672','light_mode','Light Mode','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('673','sort_by_default','Default','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('674','faq_section_heading','FAQ Section [Heading]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('675','graphic_violence_gore','Graphic Violence &amp; Gore','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('676','delete_users','Delete Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('677','groups','Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('678','login_link_email_button_label','Login Now','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('679','access_storage','Access Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('680','cloud_storage_bucket_name','Bucket Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('681','system_info','System Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('682','add_custom_page','Add Custom Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('683','recording','Recording','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('684','last_visit','Last Visit','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('685','remember_me','Remember Me','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('687','primary_bg_color','Primary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('688','time_format','Time Format','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('689','delete_group_messages','Delete Group Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('690','unban_from_site','Unban from Site','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('691','label_text_color','Label Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('692','view_private_chats','View Private Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('693','admins_moderators','Admins &amp; Moderators','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('694','octonary_text_color','Octonary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('695','something_went_wrong','Something Went Wrong','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('696','compress_audio_files','Compress Audio Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('697','allow_guest_users_create_accounts','Allow Guest Users to Create Accounts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('698','people_nearby_max_distance','People Nearby - Maximum Distance (km)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('699','delete_site_users','Delete Site Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('700','disallowed_slugs','Disallowed Slugs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('701','open_in_popup','Open in Popup','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('702','on_group_creation','On Group Creation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('703','push_notifications','Push Notifications','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('704','monitor_group_chats','Monitor Group Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('705','faq_section_status','FAQ Section [Status]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('706','field_type','Field Type','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('707','entries_per_call','Entries per call','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('708','email_logo','Logo (Email Template)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('709','footer_block_heading','Footer Block [Heading]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('710','requires_consent','Your consent is required.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('711','unban_users_from_group','Unban Users from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('712','delete_only_offline_users','Delete only Offline Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('713','links','Links','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('714','email_successfully_sent','Email successfully sent','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('715','show_on_info_page','Show on Info Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('716','administrators','Administrators','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('717','url','URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('718','signup_agreement','I agree to the Terms of Service and Privacy Policy','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('719','import_users','Import Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('720','landing_page_copyright_notice','© 2021 Company, Inc. All rights reserved.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('721','medium','Medium','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('722','hero_section_image','Hero Section [Image]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('723','12_format','12-hour clock','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('724','emojis','Emojis','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('725','profile_url','Profile URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('726','maximum_full_name_length','Maximum Full Name Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('727','featured_image','Featured Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('728','group_roles','Group Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('729','hidden','Hidden','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('730','unverified_email_address','Unverified Email Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('731','show_on_signup','Show on Signup Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('732','time_am','AM','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('733','no_conversation_found_subtitle','Try changing the filters or search term','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('734','meta_title','Meta Title','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('735','reset','Reset','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('737','daily_send_limit_private_messages','Daily Send Limit [Private Messages]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('738','notifications','Notifications','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('739','invalid_group_password','Invalid Group Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('740','senary_bg_color','Senary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('742','fake_online_users','Fake Online Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('743','octonary_font_size','Octonary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('744','ip_blacklist','IP Blacklist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('745','footer_text','Footer Text','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('746','force_https','Force HTTPS','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('747','landing_page_faq_question_10_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('748','results_found','Results Found','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('749','google_recaptcha_v2','Google reCAPTCHA v2','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('750','new_message_notification','You have a new message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('751','entry_page_background','Entry Page Background','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('752','landing_page_faq_question_1_answer','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('753','add_users','Add Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('754','add_meta_tags','Add Meta Tags','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('755','fake_users','Fake Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('756','status','Status','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('757','dark_mode','Dark Mode','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('758','add_language','Add Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('759','primary_border_color','Primary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('760','hide_email_address_field_in_registration_page','Hide Email Address Field in Registration Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('761','not_logged_in','Not Logged In','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('762','site_role_2','Web Admin','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('763','view_shared_files','View Shared Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('764','rename','Rename','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('765','email_validator','Email Validator','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('766','captcha_site_key','Captcha Site Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('767','default','Default','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('768','api_secret_key','API Secret Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('769','under_review','Under Review','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('770','export','Export','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('771','on_new_site_notification','On New Site Notification','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('772','comments_if_any','Comments (If Any)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('773','account_banned','Your account has been banned for violating the Terms of Service.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('774','ymd_format','Year Month Day','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('775','gifs','GIFs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('776','approve_users','Approve Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('777','nonary_text_color','Nonary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('778','disapprove','Disapprove','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('779','no_conversation_found','No Conversation Found','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('780','explicit_nudity','Explicit Nudity','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('781','landing_page_footer_block_one_description','3 Burthong Road, Eremerang, New South Wales, 2877 Australia','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('782','landing_page_groups_section_description','Where Good conversation become great experiences','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('783','nonary_font_size','Nonary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('784','page_content','Page Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('785','send_requests','Send Requests','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('786','delete_group','Delete Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('787','already_exists','Already Exists','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('788','switch_user','Switch User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('789','requires_minimum_full_name_length','Require Minimum Length for Full Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('790','monitor_private_chats','Monitor Private Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('791','sticker_packs','Sticker Packs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('792','email','Email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('793','email_login_link','Email Login Link','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('794','unfriend','Unfriend','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('795','custom_css','Custom CSS','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('796','read_more_criteria','Add Read More button if height greater than (px)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('797','primary_text_color','Primary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('798','group_invitation_email_subject','You have Got an Invitation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('799','minimum_score_required_offensive','Minimum Score Required [Offensive Signs &amp; Gestures] %','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('800','secondary_bg_color','Secondary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('801','open_in_new_window','Open Link in New Window','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('802','select_an_option','Select an Option','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('803','footer_block_description','Footer Block [Description]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('804','deleting','Deleting','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('805','landing_page_faq_question_2','How to Delete an account ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('806','username','Username','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('807','denary_text_color','Denary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('808','username_exists','Username Already Taken','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('809','storage_usage','Storage Usage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('810','edit_custom_page','Edit Custom Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('811','top','Top','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('812','default_timezone','Default Timezone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('813','badge','Badge','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('814','exceeded_maxgroupjoin','Exceeded Maximum Number of Groups You can Join','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('815','add_friend','Add Friend','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('816','please_wait','Please Wait','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('817','home','Home','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('818','header_content','Header Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('819','septenary_bg_color','Septenary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('820','onesignal_prompt_cancel_button','Cancel','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('821','show_on_landing_page_footer','Show on Landing Page [Footer]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('822','play','Play','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('823','low','Low','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('824','app_id','APP ID or Client ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('825','off','Off','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('826','disabled','Disabled','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('827','advert_max_height','Maximum Height (px)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('828','landing_page_hero_section_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('829','assign_badges','Assign Badges','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('830','disapprove_user_confirmation','Are you sure you want to disapprove this user ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('831','remove_group_members','Remove Group Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('832','modules','Modules','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('833','unverified','Unverified','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('834','minimum_full_name_length','Minimum Full Name Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('835','read_status','Read Status','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('836','hide_username_field_in_registration_page','Hide Username Field In Registration Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('837','email_username','Email/Username','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('838','ban_users_from_group','Ban Users from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('839','global_css','Global CSS','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('840','sent','Sent','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('841','login_link_email_content','A warm welcome to our website. You&#039;re now part of our website. We&#039;re excited to have you on board. Meet new friends. Share your experiences.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('842','webpushr_public_key','Webpushr Public Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('843','captcha','Captcha','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('844','nonary_bg_color','Nonary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('845','faq','FAQ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('846','on_new_message','On New Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('847','banned_page_button','Contact Support','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('848','edit_custom_field_value','Edit Custom Field Value','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('849','suspended','Suspended','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('850','tertiary_bg_color','Tertiary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('851','default_group_visibility','Default Group Visibility','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('852','groups_section_heading','Groups Section [Heading]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('853','seen_by','Seen By','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('854','copyright_notice','Copyright Notice','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('855','landing_page_faq_question_1','How to create an account ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('856','landing_page_footer_text','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('857','custom_group_role','Custom Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('858','banned_page_title','You Are Banned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('859','dashboard','Dashboard','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('860','complaint_status','Complaint Status','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('861','rename_audio_file','Rename Audio File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('862','uploading_files','Uploading File(s)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('863','receive_requests','Receive Requests','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('864','add_fake_users','Add Fake Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('865','maximum_message_length','Maximum Message Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('866','landing_page_faq_question_4','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('867','conversation_with','Conversation With','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('868','nonary_border_color','Nonary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('869','right','Right','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('870','hcaptcha','hCaptcha','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('871','create','Create','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('872','view_public_group_messages_non_member','View Public Group Messages without being Group Member [Logged in Users]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('873','edit_language','Edit Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('874','show_on_front_page','Show on Frontpage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('875','editable_only_once','Editable Only Once','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('876','view_secret_groups','View Secret Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('877','nearby_users','Nearby Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('878','delete_complaints','Delete Complaints','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('879','mdy_format','Month Day Year','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('880','custom_js','Custom JS','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('881','accept_friend','Accept Friend','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('882','approve_user_confirmation','Are you sure you want to approve this user ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('883','minimum_score_required_partial_nudity','Minimum Score Required [Partial Nudity] %','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('884','landing_page_groups_section','Groups Section (Landing Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('885','offline','Offline','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('886','delete_message_time_limit','Time Limit to Delete their own Messages (Minutes)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('887','no_results_found_subtitle','Try changing the filters or search term','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('888','email_domain_not_allowed','Not allowed to use an email address from this domain ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('889','new_badge_awarded','New Badge Awarded','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('890','assigned','Assigned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('891','denary_font_size','Denary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('892','icon_class','Icon Class','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('893','landing_page_faq_section_heading','Frequently Asked Questions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('894','mini_audio_player','Mini Audio Player','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('895','landing_page','Landing Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('896','login_link_email_subject','Your Login Link','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('897','view_complaint','View Complaint','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('898','slideshows','Slideshows','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('899','embed_group','Embed Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('900','hide_name_field_in_registration_page','Hide Name Field in Registration Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('901','unban_users_from_site','Unban Users from Site','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('902','approve','Approve','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('903','forms','Forms','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('904','manage_custom_fields','Manage Custom Fields','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('905','comments_by_complainant','Comments by Complainant','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('906','set_default_language','Set as Default Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('907','data_unavailable','Data Unavailable','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('908','send_as_another_user','Send Messages as Another Site User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('909','refresh_rate','Chat Refresh Rate (Milliseconds)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('910','site_adverts','Site Adverts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('911','javascript','JavaScript','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('912','sample_reference_file','Sample Reference File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('913','audio_message','Audio Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('914','left_content_block','Left Content Block','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('915','reply_to','Reply To','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('916','advert_content','Advert Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('917','join','Join','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('918','duration','Duration','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('919','edit_advert','Edit Advert','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('920','message_scheduler','Message Scheduler','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('921','edit_site_role','Edit Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('922','edit_message','Edit Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('923','lifetime','Lifetime','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('924','secondary_text_color','Secondary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('925','order_id','Order ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('926','add_images','Add Images','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('927','started_on','Started On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('928','supported_file_formats','Supported File Formats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('929','set_participant_settings','Set Participant Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('930','expiring_on','Expiring On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('931','expired_on','Expired On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('932','main_panel_content_on_page_load','Content to Show on Page Load [Main Panel]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('933','manage_audio_player','Manage Audio Player','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('934','payment_methods','Payment Methods','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('935','denary_bg_color','Denary Background Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('936','add_payment_method','Add Payment Method','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('937','pending','Pending','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('938','scheduled_message','Scheduled Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('939','manage_payment_gateways','Manage Payment Gateways','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('940','edit_own_message','Edit Own Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('941','payment_method','Payment Method','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('942','schedule_message','Schedule Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('943','enroll_membership','Enroll Membership','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('944','edit_all_messages','Edit All Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('945','view_personal_transactions','View Personal Transactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('946','who_all_can_view_page','Who all can View Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('947','send_message_on','Send Message On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('948','site_role_3','Registered','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('949','view_site_transactions','View Site Transactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('950','bank_transfer_choose_file','Choose a file (PDF, JPG, or PNG):','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('951','unknown','Unknown','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('952','schedule_cronjob_command_message_skip','Make sure to schedule the following cronjob command in your hosting server to run the script automatically at your preferred intervals, and if the cronjob is already scheduled, skip this step','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('953','ip_intelligence_probability','Probability','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('954','download_invoice','Download Invoice','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('955','file_upload_failed','File upload failed','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('956','mention_users','Mention Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('957','view_membership_info','View Membership Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('958','vc_agora_app_certificate','Agora App Certificate','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('959','edit_message_time_limit','Time Limit to Edit their own Messages (Minutes)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('960','bank_transfer_receipts','Bank Transfer Receipts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('961','group_invitation_email_button_label','Join Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('962','successful','Successful','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('963','ip_intel_validate_on_login','Validate on User Login','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('964','csv_file','CSV File','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('965','view_profile_url','View Profile URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('966','create_video_chat_groups','Create Groups with Video Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('967','failed','Failed','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('968','ip_intel_validate_on_register','Validate on User Signup','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('969','time_limit_expired','Time Limit has Expired','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('970','maximum_guest_nickname_length','Maximum Guest Nickname Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('971','is_calling_text','is calling you','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('972','invoice','Invoice','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('973','minimum_guest_nickname_length','Minimum Guest Nickname Length','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('974','smtp_self_signed_certificate','Self-signed Certificate','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('975','reject','Reject','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('976','edit_order','Edit Order','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('977','requires_minimum_guest_nickname_length','Requires Minimum Length for Guest Nickname','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('978','gif_search_engine_api','GIF Search Engine API','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('979','user_busy_message','The user is on another call.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('980','bank_receipts','Bank Receipts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('981','read_terms','Read Terms','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('982','user_initiated_video_call','The user has initiated a video call','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('983','invoice_from','Invoice From','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('984','accepted','Accepted','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('985','sending_limit_reached','Sending Limit Reached. Please wait : ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('986','group_role_3','Group Moderator','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('987','exceeds_guest_nickname_length','Guest Nickname character length limit exceeded','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('988','septenary_border_color','Septenary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('989','repeat_message','Repeat Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('990','on_new_private_video_call','Someone initiates a private video call with the user','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('991','global_js','Global Custom JS','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('992','attachments','Attachment(s)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('993','fullscreen','Fullscreen','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('994','uploaded_on','Uploaded On','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('995','slideshow','Slideshow','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('996','group_role_2','Group Admin','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('997','repeat_interval','Repeat Interval (Minutes)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('998','no_group_selected','Empty Inbox','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('999','ad_block_detected_title','AdBlock Detected!','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1000','invoice_to','Invoice To','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1001','others','Others','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1002','bank_receipt','Bank Receipt','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1003','appkey','APP Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1004','welcome_screen_message','Share what&#039;s on your mind with other people from all around the world to find new friends','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1005','go_offline','Go Offline','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1006','enter_is_send','Send message with Enter key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1007','invoice_id','Invoice ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1008','chat_page','Chat Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1009','invite_link','Invite Link','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1010','quaternary_text_color','Quaternary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1011','add_cron_job','Add Cron Job','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1012','repetition_rate','Repetition rate','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1013','not_found_page_title','404 - Page not found','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1014','billing_address_not_found','Billing address not found. Please update your billing information.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1015','group_role_1','Banned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1016','site_users','Site Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1017','reject_request','Reject Request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1018','cloud_storage_public_url','Public URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1019','non_member','Non Member','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1020','web_address','Web Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1021','seconds','Seconds','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1022','change_to_offline_status_after','Change to Offline Status After (Minutes)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1023','role_hierarchy','Role Hierarchy','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1024','custom_menu','Custom Menu','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1025','login_as_another_user','Login as Another User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1026','billing_info','Billing Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1027','cloud_storage_endpoint','Endpoint','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1028','languages','Languages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1029','memberships','Memberships','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1030','custom_avatar','Custom Avatar','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1031','custom_pages','Custom Pages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1032','24_format','24-hour clock','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1033','view_receipt','View Receipt','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1034','hide_phone_number_field_in_registration_page','Hide Phone Number Field in Registration Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1035','messages','Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1036','live_kit','LiveKit','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1037','billed_to','Billed To','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1038','load_profile_on_page_load','Load Profile on Page Load','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1039','ad_block_detected_description','Our website is made possible by displaying online advertisements to our visitors.                    Please consider supporting us by disabling your ad blocker on our website.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1040','ban_from_site','Ban from Site','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1042','street_address','Street Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1043','live_kit_api_key','LiveKit API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1044','landing_page_faq_question_10','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1045','show_profile_on_pm_open','Show Profile upon opening Private Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1046','slug_condition','Slug must contain at least one letter','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1047','city','City','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1048','show_side_navigation_on_load','Show Side Navigation On Load','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1049','order','Order','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1050','add_package','Add Package','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1051','phone_number_verification','Phone Number Verification','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1052','friends','Friends','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1053','own_message_alignment','Message Alignment [Own]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1054','live_kit_url','LiveKit URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1055','state','State','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1056','on_getting_banned_from_group','Someone banned from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1057','recently_joined','Recently Joined','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1058','ad_block_detected_button','I&#039;ve disabled AdBlock','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1059','country','Country','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1060','private_chats','Private Chats','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1061','live_kit_secret_key','LiveKit Secret Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1062','hide_language','Hide Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1063','postal_code','Postal Code','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1064','cloud_storage','Cloud Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1065','package_name','Package Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1066','on_getting_temporarily_banned_from_group','Someone temporarily banned from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1067','company_address','Company Address ','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1068','create_group_role','Create Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1069','firebase','Firebase','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1070','landing_page_faq_question_5_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1071','invoice_footer','Invoice Footer Note','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1072','autoplay_audio_player','Autoplay Audio Player','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1073','adblock_detector','Adblock Detector','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1074','default_currency','Default Currency','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1075','joined_group','Joined the Group Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1076','fb_messagingsenderid','Messaging Sender ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1077','default_currency_symbol','Default Currency Symbol','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1078','login_cookie_validity','Login Cookie Validity (Days)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1079','pricing','Pricing','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1080','edit_audio','Edit Audio','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1081','date_text','Date','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1082','gif','GIF','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1083','custom_fields','Custom Fields','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1084','external_page','External Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1085','edit_cron_job','Edit Cron Job','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1086','invoice_total','Invoice Total','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1087','cloud_storage_ftp_host','FTP Hostname','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1088','flood_control_error_message','You are submitting too quickly. Please wait','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1089','continue_text','Continue','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1090','manage_adverts','Manage Adverts','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1091','error','Error','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1092','edit_site_transactions','Edit Site Transactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1093','report_group','Report Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1094','amazon_s3','Amazon S3','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1095','view_order','View Order','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1096','banned_from_group_message','You are Banned from accessing the Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1097','landing_page_faq_question_5','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1098','membership_package_id','Membership Package ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1099','mail_footer_text','If you have any questions or concerns, \n please feel free to email us at','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1100','users_banned','Users Banned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1101','placed_by','Placed By','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1102','invalid_captcha','Invalid Captcha','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1103','s3_compatible','S3 Compatible Storage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1104','validate','Validate','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1105','typing_indicator','Typing Indicator','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1106','all_group_members','All Group Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1107','delete_all_messages','Delete All Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1108','take_action','Take Action','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1109','fb_apikey','API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1110','onesignal_prompt_message','We would like to send you Push Notifications for the latest Updates.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1111','approve_enroll','Approve &amp; Enroll','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1112','billing_interval','Billing Interval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1113','done','Done','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1114','disapprove_unenroll','Disapprove &amp; Unenroll','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1115','fb_authdomain','Auth Domain','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1116','removed_from_group','Got removed from Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1117','reassign_site_role','Reassign Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1118','one_time','One Time','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1119','site_transactions','Site Transactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1120','invalid_value','Invalid Input or Field Empty','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1121','fb_projectid','Project ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1122','success','Success','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1123','cloud_storage_ftp_username','FTP Username','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1124','streaming_server','Streaming Server','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1125','custom_field_3_options','{"male":"Male","female":"Female","non_binary":"Non-binary"}','multi_line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1126','monthly','Monthly','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1128','pin_groups','Pin Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1129','shoutcast','SHOUTcast','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1130','landing_page_faq_question_6','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1131','maximum_storage_space','Maximum Storage Space (MB)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1132','version','Version','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1133','yearly','Yearly','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1134','site_role_5','Guest','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1135','ignore_users','Ignore Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1136','icecast','Icecast','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1137','system_email_address','System Email Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1138','question','Question','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1139','custom','Custom','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1140','edit_group_role','Edit Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1141','on_awarding_group_badges','Group awarded with new badge','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1142','mention_everyone','Mention @everyone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1143','transaction_successful_message','Your transaction was successful.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1144','cloud_storage_ftp_password','FTP Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1145','no_of_days','How Many Days','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1146','transaction_failed_message','Your transaction has failed.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1147','cookie_consent_modal_content','We may use cookies, web beacons, tracking pixels, and other tracking technologies when you visit our website, including any other media form, media channel, mobile website, or mobile application related or connected thereto (collectively, the &quot;Site&quot;) to help customize the Site and improve your experience. We reserve the right to make changes to this Cookie Policy at any time and for any reason. Any changes or modifications will be effective immediately upon posting the updated Cookie Policy on the Site, and you waive the right to receive specific notice of each such change or modification. You are encouraged to periodically review this Cookie Policy to stay informed of updates. You will be deemed to have been made aware of, will be subject to, and will be deemed to have accepted the changes in any revised Cookie Policy by your continued use of the Site after the date such revised Cookie Policy is posted.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1148','footer_section_status','Footer Section [Status]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1149','license','License','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1150','related_site_role','Related Site Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1151','forward_message','Forward Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1152','total_orders','Total Orders','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1153','fb_appid','App ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1154','landing_page_faq_question_7','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1155','cloud_storage_ftp_port','FTP Port','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1156','successful_orders','Successful Orders','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1157','search_users','Search Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1158','confirm_leave',' Are you sure you want to leave this group?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1159','custom_field_2','Birth Date','one-line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1160','this_month','This Month','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1161','firebase_private_key','Firebase Private Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1162','facebook_url','Facebook URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1163','headers_footers','Headers &amp; Footers','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1164','last_run_time','Last Run Time','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1165','site_role_id_on_expire','Site role upon expiration','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1166','error_message','Something went wrong, try refreshing.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1167','custom_field_3','Gender','one-line','1','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1168','last_month','Last Month','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1169','role_attributes','Role Attributes','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1170','web_push_sent_reply_message','Replied to Your Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1171','sms_gateway','SMS Gateway','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1172','searchable','Searchable','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1173','this_year','This Year','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1174','membership_packages','Membership Packages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1175','twilio','Twilio','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1176','name_censored_word_detected','Name contains a censored word','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1177','recent_transactions','Recent Transactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1178','benefits','Benefits','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1179','attach_stickers','Attach Stickers','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1180','phone_number','Phone Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1181','group_admin_role','Group Administrator Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1182','membership_info','Membership Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1183','username_censored_word_detected','Username contains a censored word','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1184','profanity_filter','Profanity Filter','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1185','invalid_phone_number','Invalid Phone Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1186','group_moderator_role','Group Moderator Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1187','boxed','Boxed Layout','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1188','site_terms_conditions','Site Terms &amp; Conditions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1189','group_banned_user_role','Role for Banned Group Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1190','enter_otp','Enter OTP','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1191','edit_package','Edit Package','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1192','show_on_guest_login','Show on Guest Login Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1193','site_admin_role','Site Administrator Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1194','slug','Slug','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1195','link_filter','Link Filter','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1196','filter_username','Filter Username','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1197','forward_messages','Forward Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1198','verify','Verify','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1199','site_unverified_user_role','Role for Unverified Site Users (Email)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1200','landing_page_faq_question_7_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1201','recipient','Recipient','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1202','contains_blacklisted_links','Your message contains blacklisted links','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1203','benefit','Benefit','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1204','view_password_protected_groups','View Password Protected Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1205','content','Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1206','pinned_group','Pinned','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1207','site_slogan','Site Slogan','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1208','landing_page_faq_question_8','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1209','total_members','Total Members','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1210','guest_user_role','Site Role for Guests Logging In','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1211','category','Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1212','web_push_new_pm_message','Sent you a private message.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1213','filter_full_name','Filter Full Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1214','user_does_not_exist','User Does not Exist','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1215','link_filter_tip','To block all domain pages and subpages, just append an asterisk (*) at the end of the domain in your blacklist.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1216','site_banned_user_role','Site Role for Banned Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1217','color_scheme','Color Scheme','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1218','landing_page_faq_question_8_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1219','membership','Membership','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1220','verify_phone_number','Verify Phone Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1221','cloud_storage_ftp_path','FTP Path','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1222','view_all','View All','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1223','found_duplicate_roles','Choose a distinct role for each attribute','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1224','tls','TLS','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1225','landing_page_faq_question_9','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1226','laut_fm','Laut.fm','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1227','filter_messages','Filter Messages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1228','platform','Platform','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1229','create_badge','Create Badge','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1230','verify_phone_number_text','We send you a one-time password to the mobile number that you entered. Type the OTP received and click on verify.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1231','your_current_info','Your Current Info','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1232','group_invitation_email_content','Come join our community where you can share, learn, and discover amazing resources, ask questions, engage in conversations.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1233','landing_page_faq_question_9_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1234','invoice_logo','Invoice Logo','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1235','react','React','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1236','add_provider','Add Provider','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1237','resend_otp','Resend OTP','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1238','ban_from_group_confirmation','Are you sure you want to ban this user from Group ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1239','set_fake_online_users','Set Fake Online Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1240','verify_your_phone_number','The phone number was not verified. In order to proceed, please, verify.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1241','name','Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1242','message_alignment','Message Alignment','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1243','disable_right_click','Disable Right Click','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1244','page_title','Page Title','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1245','validate_settings','Validate Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1246','user_pending_approval_email_heading','Pending Approval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1247','phone_number_verified','Your phone number has been verified','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1248','user_initiated_audio_call','The user has initiated a audio call','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1249','landing_page_faq_question_6_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1250','user_pending_approval_email_content','A new user has registered on your website and is currently pending approval. The user&#039;s details are as follows:','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1251','advanced_search_criteria','To perform a search, you need to provide at least one field to search.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1252','line_busy_message','The line is currently busy with an ongoing audio/video call.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1253','denied','Permission Denied','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1254','transactions','Transactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1255','invalid_otp_code','Invalid OTP Code','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1256','video_audio_chat','Video/Audio Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1257','samesite_cookies','SameSite Cookies','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1258','user_pending_approval_email_subject','New User Pending Approval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1259','audio_chat','Audio Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1260','temporary_ban_from_group','Temporary Ban','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1261','packages','Packages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1262','create_audio_chat_groups','Create Groups with Audio Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1263','cloud_storage_ftp_endpoint','FTP Endpoint','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1264','user_pending_approval_email_button_label','Visit Website','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1265','sharing_your_location','Sharing Your Location','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1266','now_playing','Now Playing','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1267','shared_location','Shared Location','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1268','pricing_subtitle','Get More with Subscriptions: Exploring Pricing Options','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1269','view_invisible_users','View Invisible Users (Offline Mode)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1270','share_location','Share Location','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1271','on_private_message_offline','Someone send a Private Message when Offline','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1272','preview_pdf_files','Preview PDF Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1273','invalid_group_role','Invalid Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1274','welcome_user_email_subject','Welcome Aboard','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1275','welcome_user_email_heading','Welcome Aboard','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1276','approve_phone_number','Approve Phone Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1277','welcome_user_email_content','A warm and heartfelt welcome to you! We are absolutely thrilled to welcome you as a cherished member of our online community. Feel free to explore, express yourself, and make this space your own. We&#039;re here to support you every step of the way.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1278','available_packages','Available Packages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1279','web_push_on_friend_request','Sent you a friend request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1280','assets_folder_missing','&quot;files&quot; folder missing. [1] Login to your cloud storage account [2] Create &quot;assets&quot; folder [3] Upload &quot;assets/files/&quot; folder &amp; its contents inside &quot;assets&quot; folder','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1281','welcome_user_email_button_label','Explore Now','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1282','on_friend_request','Someone send a Friend Request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1283','twilio_account_sid','Twilio Account SID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1284','show_timestamp_on_mouseover','Show Timestamp on Mouseover','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1285','send_welcome_email','Send Welcome Email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1286','when_changing_group_role','When Changing Group Role','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1287','previous','Previous','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1288','separate_commas','Separate with commas','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1289','email_contents','Email Contents','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1290','line_break_delimiter','Use line break as the delimiter','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1291','invalid_bucket_name','Invalid Bucket Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1292','email_category','Email Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1293','download_files','Download Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1294','offline_page_button','Refresh','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1295','welcome_email','Welcome Email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1296','invalid_pwa_icon_dimensions','Use an image that is at least 512X512 pixels','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1297','verification_email','Verification Email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1298','group_invitation_email_heading','You&#039;ve Got an invitation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1299','login_link_email','Login Link Email','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1300','fields','Fields','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1301','new_friend_request','New Friend Request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1302','sending_limit','Sending Limit (Per Minute)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1303','new_private_message','New Private Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1304','on_new_user_pending_approval','New user signup pending approval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1305','user_pending_approval','User Pending Approval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1306','twilio_auth_token','Twilio Auth Token','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1307','reset_password','Reset Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1308','csrf_token','CSRF Token','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1309','updated_user_group_role','Group role has been changed to','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1310','email_subject','Email Subject','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1311','unleavable_group','Unleavable Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1312','private_conversations','Private Conversations','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1313','sms_settings','SMS Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1314','email_heading','Email Heading','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1315','delete_all','Delete All','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1316','dateformat','Date Format','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1317','allow_sharing_email_addresses','Allow Sharing Email Addresses','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1318','email_content','Email Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1319','request_timeout','Timeout Seconds (Long Polling)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1320','set_group_slug','Set Group Slug','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1321','enable_photo_upload_on_signup','Enable Photo upload on Signup','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1322','quinary_text_color','Quinary Text Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1323','email_button_label','Email Button Label','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1324','sms_src','Sender/From Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1325','javascript_files','Javascript Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1326','select_option','Select Option from Dropdown','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1327','register','Register','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1328','landing_page_faq_question_4_answer','','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1329','notification_settings','Notifications','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1330','group_invitation_email','Group Invitation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1331','complainant','Complainant','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1332','messagebird','MessageBird','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1333','loading_image','Loading Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1334','sightengine','Sightengine','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1335','conversation','Conversation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1336','required','Required','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1337','change_username','Change Username','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1338','google_cloud_vision','Google Cloud Vision','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1339','set_default_group_role_within_group','Set Default Group Role within the Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1340','on_updating_group_info','Updating Group Information','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1341','search_on_change_of_input','Search on Change of Input','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1342','footer','Footer','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1343','messagebird_api_key','MessageBird API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1344','welcome_screen_footer_text','By accessing this website, you are agreeing to be bound by the Terms and Conditions of Use','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1345','flood_control_time_difference','Required time difference between each message (seconds)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1346','read_more','Read More','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1347','new_friend_request_email_subject','New Friend Request Received','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1348','group_role_4','Member','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1349','blacklist_user_permission_denied','Permission Denied : You are not allowed to block/ignore Site Administrators','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1350','abuse','Abuse','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1351','secret_group','Secret Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1352','invalid_credentials','Invalid Credentials','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1353','change_email_address','Change Email Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1354','number_field','Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1355','delete_older_than','Delete older than (Minutes)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1356','new_friend_request_email_heading','New Friend Request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1357','custom_background','Custom Background','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1358','google_cloud_vision_api_key','Google Cloud API key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1359','next','Next','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1360','delete_file_confirmation','Are you sure you want to delete this file ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1361','missing_profile_image','Please upload a profile image to continue','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1362','gcv_image_removal_criteria','Delete Images that contain','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1363','create_public_group','Create Public Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1364','linkedin_url','LinkedIn URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1365','pm_only_specific_roles','PM only specific roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1366','adult_content','Adult Content','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1367','selected_package_information','Selected Package Information','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1368','change_avatar','Change Avatar','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1369','profile_image','Profile Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1370','spoof_content','Spoof','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1371','new_friend_request_email_content','You have received a new friend request on our platform. You can view and respond to this request by logging into your account and going to the &quot;Friends&quot; section.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1372','left','Left','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1373','registration_otp_message','Your OTP for registration is','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1374','medical_content','Medical','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1375','default_bg_group_chat','Default Background Image [Group Chat]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1376','octonary_border_color','Octonary Border Color','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1377','hide','Hide','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1378','violence_content','Violence','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1379','available_payment_gateways','Available Payment Gateways','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1380','choose_site_roles','Choose Site Roles','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1381','create_groups','Create Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1382','racy_content','Racy','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1383','chat_page_footer','Footer (Chat Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1384','new_friend_request_email_button_label','View Request','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1385','delete_files','Delete Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1386','perspective_api','Perspective API','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1387','chat_page_header','Header (Chat Page)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1388','text_moderation','Text Moderation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1389','forward','Forward','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1390','price','Price','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1391','phone_number_exists','Phone number already exists','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1392','view_reactions','View Reactions','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1393','perspective_google_cloud_api_key','Google Cloud API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1394','default_bg_private_chat','Default Background Image [Private Chat]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1395','advanced_user_searches','Advanced User Searches','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1396','values','Values','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1397','select_plan','Select Plan','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1398','video_chat','Video Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1399','choose_file','Choose a file','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1400','schedule_cronjob_command_message','Make sure to schedule the following cronjob command in your hosting server to run the script automatically at your preferred intervals','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1401','background','Background','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1402','view_email_address','View Email Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1403','access_logs','Access Logs','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1404','please_note','Please Note','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1405','videos','Videos','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1406','view_phone_number','View Phone Number','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1407','clear_chat_history','Clear Chat History','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1408','send_email_notification','Send Email Notification','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1409','welcome_message','Welcome Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1410','new_private_message_email_subject','New Private Message Received','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1411','quinary_font_size','Quinary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1412','perspective_api_threshold','Perspective API Threshold','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1413','agora','Agora','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1414','toxicity','Toxicity','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1415','realtime_settings','Realtime Settings','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1416','new_private_message_email_heading','New Message Received','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1417','days','Days','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1418','refresh','Refresh','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1420','pages','Pages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1421','cloudflare_turnstile','Cloudflare Turnstile','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1422','severe_toxicity','Severe Toxicity','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1423','septenary_font_size','Septenary Font Size','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1424','profanity','Profanity','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1425','attach_files','Attach Files','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1426','select_group','Select a Group or Chat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1427','threat','Threat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1428','vc_twilio_account_sid','Twilio Account SID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1429','unblock_user','Unblock User','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1430','identity_attack','Identity Attack','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1431','new_private_message_email_content','You have received a new private message. Please log in to your account to read the message and reply if necessary.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1432','insult','Insult','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1433','cron_job_url','Cron Job URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1434','ip_blacklisted','Your IP is blacklisted','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1435','perspectiveapi_text_removal_criteria','Delete text that contain','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1436','menu_items','Menu Items','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1437','new_private_message_email_button_label','View Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1438','normalize_text_message','Normalize Text Message','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1439','detected_forbidden_words_content','Your message includes forbidden words or content.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1440','twitch_url','Twitch URL','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1441','group_create_limit','Maximum Number of Groups a User can Create','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1442','entry_page_footer_text','Ⓒ 2023. All Rights Reserved. Site Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1443','exceeded_group_creation_limit','Exceeded Maximum Number of Groups You can Create','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1444','switch_color_scheme','Switch Color Scheme','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1445','hide_fakes','Hide Fakes','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1446','ltr','Left to Right','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1447','show_language','Show Language','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1448','generate_fake_users','Generate Fake Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1449','no_of_users','Number of Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1450','gfycat','Gfycat','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1451','skip_text_moderation','Skip Text Moderation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1452','generate_profile_picture','Generate Profile Picture','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1453','confirm_action','Are you sure you want to continue ?','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1454','invalid_order_id','Invalid Order ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1455','skip_image_moderation','Skip Image Moderation','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1456','email_domain','Email Domain','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1457','menu_item','Menu Item','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1458','vc_twilio_auth_token','Twilio Auth Token','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1459','locale','Locale','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1460','show_group_members_count','Show Group Members Count','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1461','created','Created','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1462','videosdk','Video SDK','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1463','max_fake_users_limit','The maximum number of fake users you can create per run is 50.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1464','change_password','Change Password','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1465','total_users','Total Users','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1466','ip_intelligence','IP Intelligence','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1467','stay_online','Stay Online','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1468','set_timezone','Set Timezone','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1469','check_inbox','We have sent an email to your email address. Please check your Inbox.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1470','amount','Amount','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1471','found_cache_folder_cloud_storage','Found the &quot;assets/cache&quot; directory in your cloud storage. You only need to upload the &quot;assets/files&quot; directory. Please remove the &quot;assets/cache/&quot; directory from the cloud storage.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1472','temporarily_banned_from_group_message','You are Temporarily Banned from accessing the Group','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1473','vc_twilio_api_key','Twilio API Key (SID)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1474','sort_index','Sort Index','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1475','screen_sharing','Screen Sharing','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1476','bank_account_details','Bank Account Details','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1477','sharing_video','Sharing Video','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1478','group_categories','Categories','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1479','proxycheck_io','ProxyCheck.io','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1480','manage_group_categories','Manage Group Categories','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1481','bank_transfer_details_subheading','Transfer the amount to the bank account provided below.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1482','video_search_engine','Video Search Engine','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1483','create_group_category','Create Group Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1484','vc_twilio_api_secret_key','Twilio API Secret Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1485','video_search_engine_api','Video Search Engine API','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1486','categorize_groups','Categorize Groups','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1487','bank_transfer_reciept_pending_approval','Upload Receipt Status: Waiting for Approval','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1488','videos_per_load','Videos Per Load','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1489','category_name','Category Name','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1490','youtube','Youtube','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1491','category_order','Category Order','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1492','search_share_videos','Search &amp; Share Videos','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1493','getipintel','GetIPIntel','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1494','create_category','Create Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1495','message_text_formatting','Message Text Formatting','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1496','upload_receipt','Upload Receipt','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1497','edit_category','Edit Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1498','selection','Selection','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1499','vc_agora_app_id','Agora App ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1500','category_image','Category Image','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1501','membership_expiring','Your membership package will expire soon','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1502','group_category_id','Group Category ID','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1503','go_homepage','Go Homepage','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1504','membership_expired','Your membership package has expired','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1505','set_group_category','Set Group Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1506','default_group_category','Default Group Category','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1507','ip_intelligence_api_key','API Key','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1508','group_order','Group Order (Descending Order)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1509','no_of_groups_landing_page','Number of Groups to Show','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1510','landing_page_packages_section_heading','Membership Packages','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1511','landing_page_packages_section_description','Get More with Subscriptions: Exploring Pricing Options','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1512','pricing_menu_item','Pricing','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1513','packages_section_status','Membership Packages Section [Status]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1514','packages_section_heading','Membership Packages Section [Heading]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1515','packages_section_description','Membership Packages Section [Description]','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1516','require_billing_address','Require Billing Address','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1517','under_mainteance_title','Temporarily Unavailable','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1518','under_mainteance_description','Our site is currently undergoing maintenance. We&#039;ll be back soon. Thank you for your patience.','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1519','under_mainteance_button','Refresh Page','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1520','under_maintenance_mode','Under Maintenance Mode','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1521','maintenance_mode_access_code','Access URL (Maintenance Mode)','one-line','0','0','1');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1522','control_storage','Полный доступ к хранилищу пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1523','reported','Сообщено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1524','idle','Неактивен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1525','view_currently_online','Просмотреть онлайн сейчас','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1526','on_private_message','Кто-то отправил личное сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1527','playlist','Плейлист','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1528','allow_sharing_links','Разрешить обмен ссылками','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1529','ban_from_group','Забанить в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1530','title','Заголовок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1531','send_audio_message','Отправить аудиосообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1532','exceeded_max_msg_length','Превышена максимальная длина сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1533','mentioned_group_chat','Упомянул вас в групповом чате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1534','site_name','Название сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1535','not_found_page_description','Ресурс, который вы ищете, возможно, был удален, его имя изменено или он временно недоступен.','multi-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1536','reply','Ответить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1537','role_name','Название роли','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1538','send_mail','Отправить письмо','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1539','onesignal_safari_web_id','OneSignal Safari Web ID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1540','updated_group_info','Обновлена информация о группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1541','create_unleavable_group','Создать невыходящую группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1542','reset_password_email_subject','Восстановите вашу учетную запись','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1543','invited','Приглашён','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1544','delete','Удалить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1545','guest_users','Гостевые пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1546','banned','Забанен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1547','progressive_web_application','Прогрессивное веб-приложение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1548','guest_login_text','Создать учетную запись гостя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1549','favicon','Фавикон','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1550','pin_group','Закрепить группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1551','blacklist','Черный список','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1552','reset_password_email_button_label','Сбросить пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1553','advert_placement','Размещение рекламы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1554','report','Жалоба','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1555','primary_font_size','Основной размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1556','access_time','Время доступа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1557','edit_profile','Редактировать профиль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1558','long_text_field','Длинный текст','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1559','image','Изображение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1560','unban_from_site_confirmation','Вы уверены, что хотите разрешить этому пользователю доступ к сайту?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1561','public_group','Публичная группа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1562','protected_group','Защищенная группа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1563','edit_role','Редактировать роль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1564','dropdown_field','Выпадающий список','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1565','delete_own_group','Удалить свою группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1566','minutes','Минуты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1567','default_skin_mode','Режим по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1568','image_files','Файлы изображений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1569','view_group_members','Просмотреть участников группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1570','minimal-ui','Минимальный интерфейс','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1571','general_settings','Общие настройки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1572','someone','Кто-то','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1573','login','Войти','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1574','secondary_font_size','Вторичный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1575','roles','Роли сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1576','unban_ip_addresses','Разблокировать IP-адреса','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1577','create_site_role','Создать роль сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1578','ban','Забанить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1579','unban_from_group','Разбанить в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1580','link_target','Целевая ссылка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1581','disagree','Не согласен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1582','view_groups_without_login','Просмотр публичных групп без входа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1583','delete_access_log_confirmation','Вы уверены, что хотите удалить этот журнал доступа?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1584','temporarily_banned_from_group','Временно забанен в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1585','push_notification_icon','Иконка push-уведомлений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1586','ignored','Проигнорировано','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1587','core_settings','Основные настройки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1588','minimum_username_length','Минимальная длина имени пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1589','quinary_border_color','Пятый цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1590','senary_text_color','Шестой цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1591','preview_attachments','Предпросмотр вложений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1592','show_on_chat_page','Показать на странице чата','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1593','role','Роль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1594','group_url','URL группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1595','minimum_message_length','Минимальная длина сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1596','manage_user_access_logs','Управление журналами доступа пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1597','strict_mode','Строгий режим','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1598','advert_name','Название рекламы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1599','heading','Заголовок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1600','on_user_mention_group_chat','Кто-то упоминает пользователя в групповом чате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1601','reset_password_email_heading','Проблемы с входом?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1602','signup_text','Создать новую учетную запись','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1603','email_verified','Ваш адрес электронной почты успешно подтвержден','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1604','joined','Присоединился','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1605','select_a_page','Выбрать страницу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1606','create_sticker_pack','Создать набор стикеров','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1607','datetime','Дата и время','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1608','add_to_group','Добавить в группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1609','group_join_limit','Максимальное количество групп, в которые пользователь может вступить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1610','infotip_footer_tag','Это будет напечатано перед закрывающим тегом &lt;/body&gt;','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1611','unjoined','Покинул','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1612','blocked','Заблокирован','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1613','quaternary_border_color','Четвертичный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1614','search_here','Искать здесь','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1615','unblock_user_confirmation','Вы уверены, что хотите разблокировать этого пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1616','add_audio_files','Добавить аудиофайлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1617','view','Просмотр','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1618','none','Нет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1619','confirm_export','Вы хотите экспортировать?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1620','other','Другое','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1621','confirm_delete_all_messages','Вы уверены, что хотите удалить все сообщения чата?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1622','smtp_port','SMTP порт','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1623','unignore_user_confirmation','Вы уверены, что хотите убрать этого пользователя из списка игнорируемых?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1624','custom_page','Пользовательская страница','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1625','pwa_description','Описание','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1626','sending','Отправка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1627','attribute','Атрибут','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1628','view_joined_groups','Просмотр присоединившихся групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1629','agree','Согласен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1630','custom_field_1','Обо мне','one-line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1631','go_back','Вернуться','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1632','message','Сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1633','edit','Редактировать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1634','instagram_url','URL Instagram','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1635','appearance','Внешний вид','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1636','radio_stations','Радиостанции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1637','super_privileges','Супер-привилегии','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1638','date_field','Дата','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1639','spam','Спам','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1640','ban_from_site_confirmation','Вы уверены, что хотите заблокировать этого пользователя на сайте?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1641','empty_profile','Пустой профиль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1642','upload','Загрузить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1643','verification_email_button_label','Подтвердите ваш email','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1644','images','Изображения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1645','gif_search_engine','Поиск GIF','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1646','password_protect','Защитить паролем','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1647','not_found_page_expression','Упс!','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1648','moderator','Модератор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1649','pwa_short_name','Краткое имя приложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1650','not_a_group_member_message','Вы не являетесь членом этой группы. Нажмите здесь, чтобы присоединиться.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1651','ffmpeg_binaries_path','Путь к бинарным файлам FFmpeg','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1652','description','Описание','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1653','login_settings','Настройки входа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1654','ip_address','IP адрес','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1655','send_on_behalf','Отправить от имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1656','group_role','Роль в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1657','edit_badge','Редактировать значок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1658','login_as_user','Войти как пользователь','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1659','site_roles','Роли на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1660','full_name','Полное имя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1661','block_user','Заблокировать пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1662','disable_private_messages','Отключить личные сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1663','enable','Включить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1664','mention','@Упомянуть','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1665','ban_users_from_site','Забанить пользователей на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1666','string_constant','Строковая константа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1667','pwa_display','Режим отображения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1668','deactivated','Деактивирован','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1669','online','В сети','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1670','messages_per_call','Сообщений за звонок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1671','giphy','GIPHY','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1672','unblocked','Разблокирован','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1673','users','Пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1674','manage_group_roles','Управлять ролями группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1675','storage_limit_exceeded','Превышен лимит хранилища','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1676','ban_ip_addresses','Заблокировать IP-адреса','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1677','shared_file','Поделился файлом','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1678','rejected','Отклонено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1679','leave_group','Покинуть группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1680','chat','Чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1681','custom_site_role','Пользовательская роль сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1682','complaints','Жалобы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1683','secondary_border_color','Вторичный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1684','attach','Поделиться файлами','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1685','upload_files','Загрузить файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1686','unbanned_from_group','Разблокирован в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1687','radio_station','Радиостанция','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1688','reply_messages','Ответить на сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1689','options','Опции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1690','on_new_site_badges','Пользователь награжден новым значком','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1691','custom_field_5','Местоположение','one-line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1692','access_token_expired','Токен доступа недействителен или истек','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1693','manage_user_roles','Управлять ролями пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1694','edit_sticker_pack','Редактировать набор стикеров','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1695','download','Скачать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1696','guest_login','Вход для гостей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1697','remove_from_group','Удалить из группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1698','tenor','Tenor','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1699','manage_site_roles','Управление ролями на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1700','reactions','Реакции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1701','timezone','Часовой пояс','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1702','attach_from_storage','Прикрепить из хранилища','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1703','short_text_field','Короткий текст','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1704','identity_provider','Поставщик идентификации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1705','went_wrong','Что-то пошло не так','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1706','language','Язык','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1707','system_default','По умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1708','welcome_screen_heading','Здравствуйте, рады вас приветствовать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1709','requires_minimum_username_length','Требуется минимальная длина имени пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1710','video_files','Видеофайлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1711','file_expired','Файл истек или не существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1712','onesignal_app_id','OneSignal APP ID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1713','login_as_guest','Войти как гость','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1714','user_email_verification','Подтверждение email пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1715','info','Информация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1716','deactivate_account','Деактивировать аккаунт','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1717','system_variables','Системные переменные','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1718','pwa_icon','Иконка PWA','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1719','shortcodes','Короткие коды','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1720','back_to_login','Вернуться к входу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1721','default_font','Шрифт по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1722','login_text','Войдите в свою учетную запись','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1723','confirm_delete','Вы уверены, что хотите удалить выбранные элементы?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1724','load_more','Загрузить больше','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1725','play_music','Воспроизвести музыку','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1726','ffprobe_binaries_path','Путь к бинарным файлам FFProbe','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1727','invite_users','Пригласить пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1728','sender','Отправитель','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1729','confirm_join','Вы уверены, что хотите присоединиться к этой группе?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1730','cron_job','Cron Job','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1731','send_as_user','Отправить как другой пользователь','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1732','unban','Разбанить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1733','change_to_idle_status_after','Изменить статус на неактивный через (минуты)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1734','tertiary_border_color','Третичный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1735','audio_player','Аудиоплеер','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1736','smtp_authentication','SMTP-аутентификация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1737','yesterday','Вчера','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1738','screenshot','Скриншот','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1739','file_name','Имя файла','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1740','delete_own_message','Удалить свое сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1741','group_info','Информация о группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1742','verification_code_expired','Код подтверждения недействителен или истек','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1743','offline_page_expression','Упс!','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1744','unleavable','Не покидаемый','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1745','member','Член','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1746','new','Новый','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1747','whitelist','Белый список','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1748','confirm','Подтвердить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1749','open','Открыть','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1750','banned_till','Забанен до','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1751','onesignal_rest_api_key','OneSignal REST API Key','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1752','offline_page_description','Извините, похоже, вы потеряли интернет-соединение или сервер не отвечает в данный момент. Пожалуйста, обновите страницу или попробуйте позже.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1753','logout','Выйти','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1754','ignore_user_confirmation','Вы уверены, что хотите игнорировать этого пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1755','verification_email_subject','Подтвердите ваш адрес электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1756','created_group','Создал группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1757','sender_name','Имя отправителя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1758','group_icon','Иконка группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1759','add_audio','Добавить аудио','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1760','account_not_found','Учетная запись не найдена','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1761','on_reply_group_messages','Кто-то ответил на сообщения пользователя (групповой чат)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1762','visit','Посетить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1763','send_message','Отправить сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1764','exceeded_max_file_upload_size','Превышен максимальный размер загружаемого файла','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1765','unignore_user','Убрать из игнорируемых','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1766','audio_files','Аудиофайлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1767','manage_avatars','Управление аватарами','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1768','max_file_upload_size','Максимальный размер загружаемого файла (МБ)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1769','other_features','Другие функции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1770','who_all_can_send_messages','Кто может отправлять сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1771','newest','Новейший','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1772','social_login_providers','Поставщики социальных входов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1773','providers','Поставщики','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1774','minimum_score_required_wad_content','Минимальный требуемый балл [Оружие, Алкоголь и Наркотики] %','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1775','you','Вы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1776','default_notification_tone','Тон уведомлений по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1777','quaternary_font_size','Четвертичный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1778','manage_custom_pages','Управление пользовательскими страницами','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1779','site_role','Роль на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1780','last_login','Последний вход','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1781','delete_shared_files','Удалить общие файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1782','header','Заголовок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1783','other_files','Другие файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1784','user_registration','Регистрация пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1785','callback_url','URL обратного вызова','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1786','invalid_email_address','Неверный адрес электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1787','block_user_confirmation','Вы уверены, что хотите заблокировать этого пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1788','allowed_file_formats','Разрешенные форматы файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1789','cover_pic','Обложка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1790','deleted','Удалено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1791','remove_user','Удалить пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1792','web_push_mentioned_user_message','Упомянул вас в групповом чате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1793','new_password','Новый пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1794','stickers','Стикеры','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1795','firewall','Брандмауэр','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1796','ignore_user','Игнорировать пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1797','create_secret_group','Создать секретную группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1798','view_message','Просмотреть сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1799','appid','APP/ID клиента','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1800','all','Все','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1801','current_role','Текущая роль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1802','landing_page_footer_block_two_heading','Контакты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1803','group','Группа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1804','pwa_name','Название приложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1805','left_group','Покинул групповой чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1806','standalone','Автономный','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1807','upload_custom_avatar','Загрузить пользовательский аватар','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1808','signup','Регистрация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1809','custom_field_6_options','{"DZ":"Алжир","AO":"Ангола","BJ":"Бенин","BW":"Ботсвана","BF":"Буркина-Фасо","BI":"Бурунди","CM":"Камерун","CV":"Кабо-Верде","CF":"Центральноафриканская Республика","TD":"Чад","KM":"Коморы","CD":"Конго [ДРК]","CG":"Конго [Республика]","DJ":"Джибути","EG":"Египет","GQ":"Экваториальная Гвинея","ER":"Эритрея","ET":"Эфиопия","GA":"Габон","GM":"Гамбия","GH":"Гана","GN":"Гвинея","GW":"Гвинея-Бисау","CI":"Кот-д'Ивуар","KE":"Кения","LS":"Лесото","LR":"Либерия","LY":"Ливия","MG":"Мадагаскар","MW":"Малави","ML":"Мали","MR":"Мавритания","MU":"Маврикий","YT":"Майотта","MA":"Марокко","MZ":"Мозамбик","NA":"Намибия","NE":"Нигер","NG":"Нигерия","RW":"Руанда","RE":"Реюньон","SH":"Остров Святой Елены","SN":"Сенегал","SC":"Сейшельские острова","SL":"Сьерра-Леоне","SO":"Сомали","ZA":"Южно-Африканская Республика","SD":"Судан","SZ":"Эсватини","ST":"Сан-Томе и Принсипи","TZ":"Танзания","TG":"Того","TN":"Тунис","UG":"Уганда","EH":"Западная Сахара","ZM":"Замбия","ZW":"Зимбабве","AQ":"Антарктида","BV":"Остров Буве","TF":"Французские Южные и Антарктические Территории","HM":"Остров Херд и Острова Макдональд","GS":"Южная Георгия и Южные Сандвичевы острова","AF":"Афганистан","AM":"Армения","AZ":"Азербайджан","BH":"Бахрейн","BD":"Бангладеш","BT":"Бутан","IO":"Британская территория в Индийском океане","BN":"Бруней","KH":"Камбоджа","CN":"Китай","CX":"Остров Рождества","CC":"Кокосовые острова","GE":"Грузия","HK":"Гонконг","IN":"Индия", "ID":"Indonesia","IR":"Iran","IQ":"Iraq","IL":"Israel","JP":"Japan","JO":"Jordan","KZ":"Kazakhstan","KW":"Kuwait","KG":"Kyrgyzstan","LA":"Laos","LB":"Lebanon","MO":"Macau","MY":"Malaysia","MV":"Maldives","MN":"Mongolia","MM":"Myanmar [Burma]","NP":"Nepal","KP":"North Korea","OM":"Oman","PK":"Pakistan","PS":"Palestinian Territories","PH":"Philippines","QA":"Qatar","SA":"Saudi Arabia","SG":"Singapore","KR":"South Korea","LK":"Sri Lanka","SY":"Syria","TW":"Taiwan","TJ":"Tajikistan","TH":"Thailand","TR":"Turkey","TM":"Turkmenistan","AE":"United Arab Emirates","UZ":"Uzbekistan","VN":"Vietnam","YE":"Yemen","AL":"Albania","AD":"Andorra","AT":"Austria","BY":"Belarus","BE":"Belgium","BA":"Bosnia and Herzegovina","BG":"Bulgaria","HR":"Croatia","CY":"Cyprus","CZ":"Czech Republic","DK":"Denmark","EE":"Estonia","FO":"Faroe Islands","FI":"Finland","FR":"France","DE":"Germany","GI":"Gibraltar","GR":"Greece","GG":"Guernsey","HU":"Hungary","IS":"Iceland","IE":"Ireland","IM":"Isle of Man","IT":"Italy","JE":"Jersey","XK":"Kosovo","LV":"Latvia","LI":"Liechtenstein","LT":"Lithuania","LU":"Luxembourg","MK":"Macedonia","MT":"Malta","MD":"Moldova","MC":"Monaco","ME":"Montenegro","NL":"Netherlands","NO":"Norway","PL":"Poland","PT":"Portugal","RO":"Romania","RU":"Russia","SM":"San Marino","RS":"Serbia","CS":"Serbia and Montenegro","SK":"Slovakia","SI":"Slovenia","ES":"Spain","SJ":"Svalbard and Jan Mayen","SE":"Sweden","CH":"Switzerland","UA":"Ukraine","GB":"United Kingdom","VA":"Vatican City","AX":"\u00c5land Islands","AI":"Anguilla","AG":"Antigua and Barbuda","AW":"Aruba","BS":"Bahamas","BB":"Barbados","BZ":"Belize","BM":"Bermuda","BQ":"Bonaire","VG":"British Virgin Islands","CA":"Canada","KY":"Cayman Islands","CR":"Costa Rica","CU":"Cuba","CW":"Curacao","DM":"Dominica","DO":"Dominican Republic","SV":"El Salvador","GL":"Greenland","GD":"Grenada","GP":"Guadeloupe","GT":"Guatemala","HT":"Haiti","HN":"Honduras","JM":"Jamaica","MQ":"Martinique","MX":"Mexico","MS":"Montserrat","AN":"Netherlands Antilles","NI":"Nicaragua","PA":"Panama","PR":"Puerto Rico","BL":"Saint Barth\u00e9lemy","KN":"Saint Kitts and Nevis","LC":"Saint Lucia","MF":"Saint Martin","PM":"Saint Pierre and Miquelon","VC":"Saint Vincent and the Grenadines","SX":"Sint Maarten","TT":"Trinidad and Tobago","TC":"Turks and Caicos Islands","VI":"U.S. Virgin Islands","US":"United States","AR":"Argentina","BO":"Bolivia","BR":"Brazil","CL":"Chile","CO":"Colombia","EC":"Ecuador","FK":"Falkland Islands","GF":"French Guiana","GY":"Guyana","PY":"Paraguay","PE":"Peru","SR":"Suriname","UY":"Uruguay","VE":"Venezuela","AS":"American Samoa","AU":"Australia","CK":"Cook Islands","TL":"East Timor","FJ":"Fiji","PF":"French Polynesia","GU":"Guam","KI":"Kiribati","MH":"Marshall Islands","FM":"Micronesia","NR":"Nauru","NC":"New Caledonia","NZ":"New Zealand","NU":"Niue","NF":"Norfolk Island","MP":"Northern Mariana Islands","PW":"Palau","PG":"Papua New Guinea","PN":"Pitcairn Islands","WS":"Samoa","SB":"Solomon Islands","TK":"Tokelau","TO":"Tonga","TV":"Tuvalu","UM":"U.S. Minor Outlying Islands","VU":"Vanuatu","WF":"Wallis and Futuna"}','multi_line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1810','share_screenshot','Поделиться скриншотом','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1811','import_json','Выбрать файл JSON','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1812','site_description','Описание сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1813','remove_custom_bg','Удалить пользовательский фон','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1814','logo','Логотип','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1815','view_profile','Просмотреть профиль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1816','add_site_members','Добавить участников сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1817','disable','Отключить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1818','pwa_background_color','Цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1819','email_settings','Настройки электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1820','create_group','Создать группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1821','label_background_color','Цвет фона метки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1822','all_file_formats','Все форматы файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1823','link_type','Тип ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1824','today','Сегодня','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1825','gravatar','Gravatar','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1826','invite','Пригласить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1827','create_role','Создать роль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1828','block_users','Заблокировать пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1829','tertiary_font_size','Третичный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1830','online_users','Пользователи онлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1831','custom_login_url','Пользовательский URL для входа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1832','create_user','Создать пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1833','show_only_on','Показывать только на','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1834','senary_border_color','Шестичный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1835','identifier','Идентификатор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1836','react_messages','Реагировать на сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1837','update','Обновить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1838','default_site_role','Роль по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1839','advert_min_height','Минимальная высота (пиксели)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1840','site_records','Записи сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1841','slug_already_exists','Краткий адрес уже существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1842','verification_email_heading','Подтверждение электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1843','avatars','Аватары','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1844','smtp_password','SMTP пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1845','forgot_password_text','Мы отправим вам инструкции по восстановлению пароля на адрес электронной почты, связанный с вашей учетной записью.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1846','open_in_new_tab','Открыть в новой вкладке','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1847','settings','Настройки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1848','username_already_exists','Имя пользователя уже существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1849','edit_provider','Редактировать поставщика','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1850','show','Показать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1851','smtp_username','SMTP имя пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1852','reset_password_success_message','Мы отправили вам письмо со ссылкой для сброса пароля. Нажмите на ссылку в письме, чтобы создать новый пароль.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1853','temporarily_banned','Временно заблокирован','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1854','generate_link_preview','Создать предварительный просмотр ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1855','google_analytics_id','Google Analytics ID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1856','device_blocked','Ваше устройство заблокировано. Превышено максимальное количество попыток входа. Попробуйте снова через час.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1857','edit_group','Редактировать группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1858','uploading','Загрузка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1859','inbox','Входящие','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1860','pwa_theme_color','Цвет темы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1861','login_link_email_heading','Добро пожаловать в сообщество','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1862','onesignal','OneSignal','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1863','create_protected_group','Создать защищенную группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1864','minimum_score_required_graphic_violence_gore','Минимальный требуемый балл [Графическое насилие и жестокость] %','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1865','documents','Документы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1866','files','Файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1867','gifs_per_load','GIFs за загрузку','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1868','upload_avatar','Загрузить аватар','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1869','wait_for_profile_approval','Ваша учетная запись в ожидании одобрения. После одобрения вы сможете войти.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1870','upload_file','Загрузить файл','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1871','unignore','Убрать из игнорируемых','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1872','inappropriate','Неподобающий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1873','custom_url_on_logout','Пользовательский URL при выходе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1874','search_messages','Поиск сообщений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1875','non_latin_usernames','Нелатинские имена пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1876','static_image','Статическое изображение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1877','tertiary_text_color','Третичный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1878','chat_message','Сообщение в чате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1879','report_message','Пожаловаться на сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1880','change_full_name','Изменить полное имя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1881','hero_section_animation','Hero Section [Анимация]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1882','admin','Администратор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1883','id','ID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1884','reload','Перезагрузить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1885','infotip_select_multiple_files','Для выбора нескольких файлов удерживайте клавишу Ctrl (ПК) или Command (Mac) и с помощью трекпада или внешней мыши, нажимайте на все остальные файлы по одному.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1886','field_options','Параметры поля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1887','track_status','Статус трека','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1888','left_panel_content_on_page_load','Содержимое для показа при загрузке страницы [Левая панель]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1889','group_members','Участники группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1890','nickname','Псевдоним','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1891','view_friends','Просмотреть друзей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1892','notification_tone','Тон уведомлений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1893','create_user_if_not_exists','Создать пользователя, если он не существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1894','hide_group_member_list_from_non_members','Скрыть список участников группы от посторонних','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1895','on_group_invitation','Кто-то отправил приглашение присоединиться к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1896','download_file','Скачать файл','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1897','side_navigation','Боковая навигация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1898','smtp_host','SMTP хост','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1899','edit_own_group','Редактировать свою группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1900','add','Добавить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1901','on_group_unread_count_change','При изменении количества непрочитанных сообщений в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1902','set_as_default','Установить по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1903','not_found_page_button','Перейти на главную','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1904','image_moderation','Модерация изображений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1905','go_online','Выйти в онлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1906','add_members','Добавить участников','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1907','display_full_file_name_of_attachments','Отображать полное имя файла вложений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1908','exceeded_group_join_limit','Превышено максимальное количество групп, к которым вы можете присоединиться','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1909','created_on','Создано','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1910','profile','Профиль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1911','confirm_email_address','Вам необходимо подтвердить ваш адрес электронной почты. Мы отправили письмо со ссылкой для подтверждения на ваш электронный адрес.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1912','ban_ip_addresses_confirmation','Вы уверены, что хотите заблокировать IP-адреса пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1913','landing_page_groups_section_heading','Популярные группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1914','invalid_login','Неверные учетные данные для входа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1915','or_login_using','или войти с помощью','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1916','reset_password_email_content','Сброс пароля прост. Просто нажмите на кнопку ниже, и вы автоматически войдете в свою учетную запись. Если вы не делали этот запрос, то проигнорируйте это письмо.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1917','user_agent','User Agent','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1918','monitor','Монитор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1919','show_on_entry_page','Показывать на входной странице','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1920','attach_gifs','Прикрепить GIFs','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1921','assign','Назначить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1922','landing_page_hero_section_heading','Гораздо больше, чем просто очередной чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1923','auto_join_group','Автоматически добавлять пользователей при регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1924','offline_page_title','Вы офлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1925','action_taken','Принятые меры','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1926','unban_ip_addresses_confirmation','Вы уверены, что хотите разблокировать IP-адреса пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1927','not_logged_in_message','Вы не вошли в систему. Нажмите здесь, чтобы войти.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1928','link_field','Ссылка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1929','open_in_same_window','Открыть в том же окне','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1930','your_friend_since','Ваш друг с','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1931','access_denied_message','403 Forbidden У вас нет прав на доступ.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1932','exceeds_username_length','Превышен максимальный размер имени пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1933','initiate_private_chat','Начать личный чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1934','septenary_text_color','Септенарный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1935','updated','Обновлено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1936','left_side_content','Содержимое левой стороны','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1937','mail_login_info','Информация для входа по электронной почте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1938','view_online_users','Просмотреть пользователей онлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1939','smtp_protocol','SMTP (SSL/TLS)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1940','members','Участники','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1941','enabled','Включено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1942','delete_messages','Удалить сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1943','email_address','Адрес электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1944','set_custom_background','Установить пользовательский фон','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1945','pwa_settings','Настройки PWA','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1946','bottom','Снизу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1947','replied_group_message','Ответил на ваше сообщение в групповом чате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1948','mobile_page_transition','Переход страницы на мобильном устройстве','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1949','sightengine_api_user','Пользователь API Sightengine','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1950','wad_content','Оружие, алкоголь и наркотики','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1951','social_login','Вход через социальные сети','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1952','verification_email_content','Прежде чем начать, нам нужно подтвердить ваш адрес электронной почты. Пожалуйста, нажмите на кнопку ниже, чтобы подтвердить ваш адрес электронной почты. Если вы не делали этот запрос, проигнорируйте это письмо.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1953','create_advert','Создать объявление','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1954','badge_title','Заголовок значка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1955','switch','Переключить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1956','moderation','Модерация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1957','footer_logo','Логотип в подвале','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1958','choose_avatar','Выбрать аватар','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1959','req_min_msg_length','Минимальное количество символов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1960','undenary_text_color','Унденарный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1961','timestamp','Временная метка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1962','banned_page_description','Вы были заблокированы на этом сайте. Если вы считаете, что ваша учетная запись была заблокирована по ошибке, напишите нам на email, и мы рассмотрим ваш случай.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1963','import','Импорт','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1964','quaternary_bg_color','Четвертичный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1965','audio','Аудио','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1966','check_read_receipts','Проверка квитанций о прочтении','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1967','system_messages_groups','Системные сообщения (группы)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1968','click_to_view_info','Нажмите здесь, чтобы просмотреть информацию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1969','comments_by_reviewer','Комментарии рецензента','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1970','group_name','Название группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1971','add_custom_field','Добавить поле','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1972','daily_send_limit_group_messages','Ежедневный лимит отправки [Групповые сообщения]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1973','cancel_request','Отменить запрос','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1974','iso_language_code','ISO код языка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1975','default_group_role','Роль по умолчанию в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1976','add_menu_item','Добавить пункт меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1977','denary_border_color','Десятичный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1978','posted_by','Опубликовано','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1979','download_attachments','Скачать вложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1980','rebuild','Перестроить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1981','unverified_users','Непроверенные пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1982','language_text_direction','Направление текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1983','chat_page_boxed_layout','Коробочный макет [Страница чата]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1984','supported_image_formats','Поддерживаемые форматы изображений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1985','load_group_info_on_group_load','Загрузка информации о группе при загрузке группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1986','minimum_score_required_explicit_nudity','Минимальный требуемый балл [Явная нагота] %','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1987','remove_cover_pic','Удалить обложку','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1988','exporting','Экспорт','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1989','login_as_admin','Войти как администратор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1990','maximum_sending_rate_exceeded','Превышена максимальная скорость отправки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1991','webpushr_rest_api_key','Webpushr REST API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1992','yes','Да','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1993','remove','Удалить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1994','loading','Загрузка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1995','people_nearby_feature','Функция 'Люди рядом'','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1996','password','Пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1997','total_groups','Всего групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1998','edit_custom_field','Редактировать поле','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('1999','media','Медиа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2000','senary_font_size','Шестичный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2001','body','Тело','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2002','read_receipts','Квитанции о прочтении','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2003','send_push_notification','Отправить пуш-уведомление','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2004','icon','Иконка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2005','review_complaints','Рассмотреть жалобы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2006','display_username_group_chats','Отображать имя пользователя вместо полного имени в групповых чатах','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2007','browser','Браузер','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2008','unsuspend','Разблокировать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2009','group_headers','Заголовки групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2010','cancel','Отмена','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2011','cookie_consent','Согласие на использование cookies','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2012','cookie_consent_modal_title','Согласие на использование cookies','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2013','landing_page_faq_question_3','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2014','chats','Чаты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2015','secret_key','Секретный ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2016','remove_from_group_confirmation','Вы уверены, что хотите удалить этого пользователя из группы?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2017','style_sheets','Таблицы стилей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2018','info_panel','Информационная панель','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2019','clear_chat','Очистить чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2020','name_color','Цвет имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2021','new_user_approval','Одобрение нового пользователя (Ручное одобрение новых пользователей)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2022','menu_title','Заголовок меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2023','files_uploaded','Файлы загружены','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2024','set_auto_join_groups','Установить автоматическое присоединение к группам','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2025','ad_free_account','Учетная запись без рекламы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2026','webpushr_authentication_token','Webpushr токен аутентификации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2027','menu_item_visibility','Видимость пункта меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2028','on_leaving_group_chat','Кто-то покидает групповой чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2029','ssl','SSL','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2030','voice_message','Голосовое сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2031','banned_users','Заблокированные пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2032','gif_content_filtering','Фильтрация содержимого GIF','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2033','stream_url','URL потока','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2034','on_load_guest_login_window','Открыть окно входа гостя при загрузке (страница входа)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2035','username_condition','Ваше имя пользователя должно содержать хотя бы одну букву','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2036','show_group_label','Показать роль группы рядом с сообщением в чате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2037','octonary_bg_color','Восьмеричный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2038','custom_field_6','Страна','one-line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2039','listen_music','Слушать музыку','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2040','entry_page','Входная страница','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2041','exceeds_full_name_length','Превышен лимит длины полного имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2042','error_uploading','Ошибка при загрузке файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2043','delete_account','Удалить учетную запись','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2044','share','Поделиться','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2045','edit_menu_item','Редактировать пункт меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2046','welcome_screen','Приветственный экран','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2047','remove_password','Удалить пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2048','unban_from_group_confirmation','Вы уверены, что хотите разблокировать этого пользователя в группе?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2049','onesignal_prompt_accept_button','Разрешить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2050','embed_code','Код для вставки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2051','moderators','Модераторы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2052','customizer','Настройщик','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2053','answer','Ответ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2054','landing_page_footer_block_two_description','+44 1632 960811 hello@yourdomain.com','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2055','css_code','CSS код','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2056','delete_all_files_confirmation','Вы уверены, что хотите удалить все файлы?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2057','view_public_groups','Просмотреть публичные группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2058','infotip_header_tag','Это будет напечатано в секции <head>','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2059','hero_section_description','Hero Section [Описание]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2060','message_id','ID сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2061','display_username_private_chats','Отображать имя пользователя вместо полного имени в личных чатах','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2062','delete_private_messages','Удалить личные сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2063','create_account','Создать учетную запись','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2064','badge_image','Изображение значка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2065','badges','Значки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2066','show_on_landing_page_header','Показывать в заголовке на главной странице','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2067','visible','Видимый','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2068','ftp_storage','FTP хранилище','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2069','location','Местоположение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2070','edit_group_header','Редактировать заголовок группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2071','on_join_group_chat','Кто-то присоединяется к групповому чату','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2072','show_only_on_specific_language','Показывать только на определенном языке','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2073','hide_groups_on_group_url','Скрывать группы при посещении через URL группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2074','sticker','Стикер','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2075','edit_users','Редактировать пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2076','maximum_username_length','Максимальная длина имени пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2077','set_cover_pic','Установить обложку','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2078','forgot_password','Забыли пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2079','default_txt','По умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2080','not_assigned','Не назначен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2081','landing_page_faq_question_2_answer','02 Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2082','review','Обзор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2083','rebuild_cache','Перестроить кэш','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2084','is_typing','печатает','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2085','landing_page_faq_question_3_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2086','unbanned','Разблокирован','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2087','zero_equals_unlimited','(0 = Безлимитно)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2088','offensive_signs_gestures','Оскорбительные знаки и жесты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2089','twitter_url','URL Twitter','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2090','icon_img','Иконка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2091','view_shared_links','Просмотреть общие ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2092','captcha_secret_key','Секретный ключ Captcha','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2093','filter','Фильтр','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2094','no_results_found','Результаты не найдены','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2095','ffmpeg','FFmpeg','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2096','high','Высокий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2097','permission_denied','Доступ запрещен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2098','confirm_your_email_address','Вам необходимо подтвердить ваш адрес электронной почты. Мы отправили письмо с подтверждением на ваш email. Чтобы завершить процесс регистрации, пожалуйста, нажмите на ссылку в письме.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2099','group_chats','Групповые чаты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2100','view_group','Просмотреть группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2101','on_private_conversation_unread_count_change','Изменение количества непрочитанных сообщений в личном разговоре','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2102','site_role_4','Заблокирован','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2103','command','Команда','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2104','cloud_storage_api_key','Ключ доступа API','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2105','entry_page_form_header','Заголовок формы (входная страница)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2106','sightengine_api_secret','Секретный ключ API Sightengine','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2107','site_role_1','Непроверенный','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2108','sitemap','Карта сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2109','group_invitation','Пригласил вас присоединиться к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2110','form','Форма','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2111','custom_field_4','Веб-сайт','one-line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2112','not_found','Не найдено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2113','export_chat','Экспорт чата','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2114','groups_section_description','Раздел групп [Описание]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2115','infotip_body_tag','Это будет напечатано после открывающего тега <body>','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2116','external_link','Внешняя ссылка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2117','compress_video_files','Сжимать видеофайлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2118','landing_page_footer_block_one_heading','Адрес','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2119','unblock','Разблокировать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2120','landing_page_faq_section','Раздел FAQ (Главная страница)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2121','pending_approval','Ожидает одобрения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2122','search','Поиск','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2123','resend_email','Отправить письмо повторно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2124','no','Нет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2125','quinary_bg_color','Пятеричный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2126','link_text','Текст ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2127','account_reactivated','Учетная запись активирована. Добро пожаловать обратно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2128','view_statistics','Просмотреть статистику','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2129','suspend','Приостановить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2130','cloud_storage_secret_key','Секретный ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2131','message_textarea_placeholder','Напишите здесь...','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2132','group_header','Заголовок группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2133','menu_order','Порядок в меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2134','group_join_confirmation','Подтверждение присоединения к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2135','cron_jobs','Cron задачи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2136','webpushr','Webpushr','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2137','groups_section_status','Статус раздела групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2138','dmy_format','День Месяц Год','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2139','manage_social_login','Управление входом через социальные сети','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2140','view_nearby_users','Просмотр пользователей поблизости','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2141','on_getting_unbanned_from_group','Кто-то разблокирован в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2142','site_controls','Управление сайтом','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2143','image_removal_criteria','Удалить изображения, содержащие','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2144','statistics','Статистика','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2145','maximum_login_attempts','Максимальное количество попыток входа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2146','group_chat','Групповой чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2147','password_doesnt_match','Пароль не совпадает с подтверждением пароля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2148','message_settings','Настройки сообщений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2149','duodenary_text_color','Двенадцатеричный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2150','view_full_name','Просмотреть полное имя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2151','play_notification_sound','Проигрывать звук уведомления','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2152','clear_realtime_activity_logs','Очистить логи активности в реальном времени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2153','banned_page_expression','Упс!','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2154','whats_wrong','Что не так','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2155','required_field','Обязательное поле','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2156','hero_section_heading','Заголовок раздела героя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2157','storage','Хранилище','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2158','default_language','Язык по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2159','site_notifications','Уведомления сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2160','meta_description','Мета-описание','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2161','cloud_storage_region','Регион','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2162','records_per_call','Записей за вызов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2163','on_removal_from_group','Кто-то удален из группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2164','compress_image_files','Сжать файлы изображений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2165','web_app_manifest','Манифест веб-приложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2166','delete_user_files','Удалить файлы пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2167','chat_window','Окно чата','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2168','embed','Встроить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2169','type','Тип','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2170','email_exists','Email уже существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2171','adverts','Реклама','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2172','join_group','Присоединиться к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2173','access_denied_non_member_message','Вы не являетесь членом этой группы. Присоединитесь к группе, чтобы просмотреть сообщения.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2174','banned_from_group','Забанен в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2175','view_site_users','Просмотр пользователей сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2176','group_suspended','Извините, эта группа приостановлена.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2177','moderation_settings','Настройки модерации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2178','resend_email_on_error','Аккаунт уже подтвержден или не существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2179','social_share_image','Изображение для социального обмена по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2180','partial_nudity','Частичная нагота','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2181','message_non_friends','Сообщение не друзьям','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2182','switch_languages','Сменить язык','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2183','friend_system','Система друзей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2184','entry_page_form_footer','Нижний колонтитул формы (Стартовая страница)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2185','rtl','Справа налево','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2186','confirm_password','Подтвердить пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2187','sort','Сортировать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2188','time_pm','PM','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2189','light_mode','Светлый режим','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2190','sort_by_default','По умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2191','faq_section_heading','Раздел часто задаваемых вопросов [Заголовок]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2192','graphic_violence_gore','Графическое насилие и кровь','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2193','delete_users','Удалить пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2194','groups','Группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2195','login_link_email_button_label','Войти сейчас','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2196','access_storage','Доступ к хранилищу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2197','cloud_storage_bucket_name','Имя корзины','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2198','system_info','Информация о системе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2199','add_custom_page','Добавить пользовательскую страницу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2200','recording','Запись','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2201','last_visit','Последний визит','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2202','remember_me','Запомнить меня','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2203','primary_bg_color','Основной цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2204','time_format','Формат времени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2205','delete_group_messages','Удалить сообщения группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2206','unban_from_site','Разбанить на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2207','label_text_color','Цвет текста метки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2208','view_private_chats','Просмотр приватных чатов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2209','admins_moderators','Администраторы и модераторы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2210','octonary_text_color','Октонарный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2211','something_went_wrong','Что-то пошло не так','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2212','compress_audio_files','Сжать аудиофайлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2213','allow_guest_users_create_accounts','Разрешить гостям создавать аккаунты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2214','people_nearby_max_distance','Люди поблизости - максимальное расстояние (км)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2215','delete_site_users','Удалить пользователей сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2216','disallowed_slugs','Запрещенные слаги','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2217','open_in_popup','Открыть во всплывающем окне','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2218','on_group_creation','При создании группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2219','push_notifications','Push-уведомления','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2220','monitor_group_chats','Мониторинг групповых чатов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2221','faq_section_status','Статус раздела часто задаваемых вопросов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2222','field_type','Тип поля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2223','entries_per_call','Записей за вызов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2224','email_logo','Логотип (шаблон email)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2225','footer_block_heading','Нижний блок [Заголовок]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2226','requires_consent','Требуется ваше согласие.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2227','unban_users_from_group','Разбанить пользователей из группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2228','delete_only_offline_users','Удалять только оффлайн-пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2229','links','Ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2230','email_successfully_sent','Email успешно отправлен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2231','show_on_info_page','Показать на информационной странице','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2232','administrators','Администраторы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2233','url','URL','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2234','signup_agreement','Я согласен с условиями обслуживания и политикой конфиденциальности','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2235','import_users','Импорт пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2236','landing_page_copyright_notice','© 2021 Компания, Inc. Все права защищены.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2237','medium','Средний','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2238','hero_section_image','Изображение раздела героя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2239','12_format','12-часовой формат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2240','emojis','Эмодзи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2241','profile_url','URL профиля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2242','maximum_full_name_length','Максимальная длина полного имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2243','featured_image','Избранное изображение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2244','group_roles','Роли группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2245','hidden','Скрытый','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2246','unverified_email_address','Неподтвержденный адрес электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2247','show_on_signup','Показать на странице регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2248','time_am','AM','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2249','no_conversation_found_subtitle','Попробуйте изменить фильтры или поисковый запрос','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2250','meta_title','Мета-заголовок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2251','reset','Сбросить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2252','daily_send_limit_private_messages','Ежедневный лимит отправки [Личные сообщения]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2253','notifications','Уведомления','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2254','invalid_group_password','Неверный пароль группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2255','senary_bg_color','Сенарный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2256','fake_online_users','Поддельные онлайн-пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2257','octonary_font_size','Октонарный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2258','ip_blacklist','Черный список IP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2259','footer_text','Текст внизу страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2260','force_https','Принудительно HTTPS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2261','landing_page_faq_question_10_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2262','results_found','Найдено результатов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2263','google_recaptcha_v2','Google reCAPTCHA v2','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2264','new_message_notification','У вас новое сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2265','entry_page_background','Фон стартовой страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2266','landing_page_faq_question_1_answer','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2267','add_users','Добавить пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2268','add_meta_tags','Добавить мета-теги','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2269','fake_users','Поддельные пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2270','status','Статус','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2271','dark_mode','Темный режим','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2272','add_language','Добавить язык','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2273','primary_border_color','Основной цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2274','hide_email_address_field_in_registration_page','Скрыть поле адреса электронной почты на странице регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2275','not_logged_in','Не вошли в систему','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2276','site_role_2','Веб-админ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2277','view_shared_files','Просмотр общих файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2278','rename','Переименовать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2279','email_validator','Проверка email','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2280','captcha_site_key','Ключ сайта Captcha','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2281','default','По умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2282','api_secret_key','Секретный ключ API','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2283','under_review','На рассмотрении','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2284','export','Экспорт','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2285','on_new_site_notification','При новом уведомлении сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2286','comments_if_any','Комментарии (если есть)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2287','account_banned','Ваш аккаунт был забанен за нарушение условий обслуживания.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2288','ymd_format','Год Месяц День','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2289','gifs','GIF','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2290','approve_users','Одобрить пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2291','nonary_text_color','Нонарный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2292','disapprove','Отклонить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2293','no_conversation_found','Беседа не найдена','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2294','explicit_nudity','Явная нагота','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2295','landing_page_footer_block_one_description','3 Burthong Road, Eremerang, Новый Южный Уэльс, 2877 Австралия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2296','landing_page_groups_section_description','Где хорошая беседа становится отличным опытом','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2297','nonary_font_size','Нонарный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2298','page_content','Содержимое страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2299','send_requests','Отправить запросы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2300','delete_group','Удалить группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2301','already_exists','Уже существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2302','switch_user','Сменить пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2303','requires_minimum_full_name_length','Требуется минимальная длина полного имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2304','monitor_private_chats','Мониторинг приватных чатов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2305','sticker_packs','Наборы стикеров','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2306','email','Email','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2307','email_login_link','Ссылка для входа по email','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2308','unfriend','Удалить из друзей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2309','custom_css','Пользовательский CSS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2310','read_more_criteria','Добавить кнопку 'Читать далее', если высота больше (px)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2311','primary_text_color','Основной цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2312','group_invitation_email_subject','Вы получили приглашение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2313','minimum_score_required_offensive','Минимальный балл для [Оскорбительных знаков и жестов] %','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2314','secondary_bg_color','Вторичный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2315','open_in_new_window','Открыть ссылку в новом окне','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2316','select_an_option','Выберите вариант','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2317','footer_block_description','Нижний блок [Описание]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2318','deleting','Удаление','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2319','landing_page_faq_question_2','Как удалить аккаунт?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2320','username','Имя пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2321','denary_text_color','Денарный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2322','username_exists','Имя пользователя уже занято','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2323','storage_usage','Использование хранилища','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2324','edit_custom_page','Редактировать пользовательскую страницу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2325','top','Верх','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2326','default_timezone','Часовой пояс по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2327','badge','Значок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2328','exceeded_maxgroupjoin','Превышено максимальное количество групп, к которым вы можете присоединиться','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2329','add_friend','Добавить в друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2330','please_wait','Пожалуйста, подождите','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2331','home','Главная','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2332','header_content','Содержимое заголовка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2333','septenary_bg_color','Септенарный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2334','onesignal_prompt_cancel_button','Отмена','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2335','show_on_landing_page_footer','Показать в нижнем колонтитуле страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2336','play','Воспроизвести','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2337','low','Низкий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2338','app_id','APP ID или клиентский ID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2339','off','Выкл.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2340','disabled','Отключено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2341','advert_max_height','Максимальная высота (px)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2342','landing_page_hero_section_description','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2343','assign_badges','Назначить значки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2344','disapprove_user_confirmation','Вы уверены, что хотите отклонить этого пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2345','remove_group_members','Удалить участников группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2346','modules','Модули','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2347','unverified','Неподтвержденный','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2348','minimum_full_name_length','Минимальная длина полного имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2349','read_status','Статус прочтения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2350','hide_username_field_in_registration_page','Скрыть поле имени пользователя на странице регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2351','email_username','Email/Имя пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2352','ban_users_from_group','Забанить пользователей из группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2353','global_css','Глобальный CSS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2354','sent','Отправлено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2355','login_link_email_content','Добро пожаловать на наш сайт. Теперь вы часть нашего сайта. Мы рады видеть вас среди нас. Найдите новых друзей. Поделитесь своими впечатлениями.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2356','webpushr_public_key','Публичный ключ Webpushr','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2357','captcha','Captcha','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2358','nonary_bg_color','Нонарный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2359','faq','Часто задаваемые вопросы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2360','on_new_message','При новом сообщении','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2361','banned_page_button','Связаться с поддержкой','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2362','edit_custom_field_value','Редактировать пользовательское поле','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2363','suspended','Приостановлено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2364','tertiary_bg_color','Третичный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2365','default_group_visibility','Видимость группы по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2366','groups_section_heading','Заголовок раздела групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2367','seen_by','Просмотрено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2368','copyright_notice','Уведомление об авторских правах','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2369','landing_page_faq_question_1','Как создать аккаунт?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2370','landing_page_footer_text','Все генераторы Lorem Ipsum в Интернете склонны повторять заранее определенные куски по мере необходимости, делая это первым настоящим генератором в Интернете.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2371','custom_group_role','Пользовательская роль группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2372','banned_page_title','Вы забанены','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2373','dashboard','Панель управления','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2374','complaint_status','Статус жалобы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2375','rename_audio_file','Переименовать аудиофайл','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2376','uploading_files','Загрузка файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2377','receive_requests','Получить запросы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2378','add_fake_users','Добавить поддельных пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2379','maximum_message_length','Максимальная длина сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2380','landing_page_faq_question_4','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2381','conversation_with','Разговор с','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2382','nonary_border_color','Нонарный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2383','right','Право','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2384','hcaptcha','hCaptcha','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2385','create','Создать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2386','view_public_group_messages_non_member','Просмотр сообщений публичной группы без участия в группе [Авторизованные пользователи]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2387','edit_language','Редактировать язык','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2388','show_on_front_page','Показать на главной странице','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2389','editable_only_once','Редактируемый только один раз','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2390','view_secret_groups','Просмотр секретных групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2391','nearby_users','Пользователи поблизости','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2392','delete_complaints','Удалить жалобы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2393','mdy_format','Месяц День Год','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2394','custom_js','Пользовательский JS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2395','accept_friend','Принять друга','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2396','approve_user_confirmation','Вы уверены, что хотите одобрить этого пользователя?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2397','minimum_score_required_partial_nudity','Минимальный балл для [Частичной наготы] %','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2398','landing_page_groups_section','Раздел групп (Главная страница)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2399','offline','Оффлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2400','delete_message_time_limit','Временное ограничение для удаления собственных сообщений (минуты)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2401','no_results_found_subtitle','Попробуйте изменить фильтры или поисковый запрос','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2402','email_domain_not_allowed','Использование адреса электронной почты с этого домена запрещено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2403','new_badge_awarded','Новый значок присвоен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2404','assigned','Назначен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2405','denary_font_size','Денарный размер шрифта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2406','icon_class','Класс иконки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2407','landing_page_faq_section_heading','Часто задаваемые вопросы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2408','mini_audio_player','Мини-аудиоплеер','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2409','landing_page','Главная страница','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2410','login_link_email_subject','Ваша ссылка для входа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2411','view_complaint','Просмотр жалобы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2412','slideshows','Слайд-шоу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2413','embed_group','Встроить группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2414','hide_name_field_in_registration_page','Скрыть поле имени на странице регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2415','unban_users_from_site','Разбанить пользователей на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2416','approve','Одобрить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2417','forms','Формы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2418','manage_custom_fields','Управление пользовательскими полями','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2419','comments_by_complainant','Комментарии от заявителя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2420','set_default_language','Установить язык по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2421','data_unavailable','Данные недоступны','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2422','send_as_another_user','Отправлять сообщения как другой пользователь сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2423','refresh_rate','Частота обновления чата (миллисекунды)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2424','site_adverts','Реклама на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2425','javascript','JavaScript','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2426','sample_reference_file','Образец файла ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2427','audio_message','Аудиосообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2428','left_content_block','Левый блок содержимого','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2429','reply_to','Ответить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2430','advert_content','Содержимое рекламы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2431','join','Присоединиться','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2432','duration','Продолжительность','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2433','edit_advert','Редактировать рекламу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2434','message_scheduler','Планировщик сообщений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2435','edit_site_role','Редактировать роль сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2436','edit_message','Редактировать сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2437','lifetime','Срок действия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2438','secondary_text_color','Вторичный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2439','order_id','ID заказа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2440','add_images','Добавить изображения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2441','started_on','Начато','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2442','supported_file_formats','Поддерживаемые форматы файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2443','set_participant_settings','Установить настройки участников','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2444','expiring_on','Истекает','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2445','expired_on','Истек','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2446','main_panel_content_on_page_load','Содержимое главной панели при загрузке страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2447','manage_audio_player','Управление аудиоплеером','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2448','payment_methods','Способы оплаты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2449','denary_bg_color','Денарный цвет фона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2450','add_payment_method','Добавить способ оплаты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2451','pending','В ожидании','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2452','scheduled_message','Запланированное сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2453','manage_payment_gateways','Управление платежными шлюзами','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2454','edit_own_message','Редактировать свое сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2455','payment_method','Способ оплаты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2456','schedule_message','Запланировать сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2457','enroll_membership','Зарегистрироваться для членства','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2458','edit_all_messages','Редактировать все сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2459','view_personal_transactions','Просмотр личных транзакций','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2460','who_all_can_view_page','Кто может просматривать страницу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2461','send_message_on','Отправить сообщение на','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2462','site_role_3','Зарегистрированный','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2463','view_site_transactions','Просмотр транзакций на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2464','bank_transfer_choose_file','Выберите файл (PDF, JPG или PNG):','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2465','unknown','Неизвестно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2466','schedule_cronjob_command_message_skip','Убедитесь, что вы запланировали следующую команду cronjob на своем хостинг-сервере, чтобы скрипт автоматически запускался с желаемыми интервалами. Если cronjob уже запланирован, пропустите этот шаг','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2467','ip_intelligence_probability','Вероятность','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2468','download_invoice','Скачать счет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2469','file_upload_failed','Загрузка файла не удалась','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2470','mention_users','Упомянуть пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2471','view_membership_info','Просмотр информации о членстве','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2472','vc_agora_app_certificate','Сертификат приложения Agora','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2473','edit_message_time_limit','Временное ограничение для редактирования собственных сообщений (минуты)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2474','bank_transfer_receipts','Квитанции о банковском переводе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2475','group_invitation_email_button_label','Присоединиться к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2476','successful','Успешно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2477','ip_intel_validate_on_login','Проверка при входе пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2478','csv_file','CSV файл','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2479','view_profile_url','Просмотр URL профиля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2480','create_video_chat_groups','Создать группы с видеочатом','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2481','failed','Не удалось','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2482','ip_intel_validate_on_register','Проверка при регистрации пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2483','time_limit_expired','Временное ограничение истекло','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2484','maximum_guest_nickname_length','Максимальная длина ника гостя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2485','is_calling_text','звонит вам','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2486','invoice','Счет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2487','minimum_guest_nickname_length','Минимальная длина ника гостя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2488','smtp_self_signed_certificate','Самоподписанный сертификат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2489','reject','Отклонить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2490','edit_order','Редактировать заказ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2491','requires_minimum_guest_nickname_length','Требуется минимальная длина ника гостя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2492','gif_search_engine_api','API поиска GIF','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2493','user_busy_message','Пользователь занят другим звонком.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2494','bank_receipts','Банковские квитанции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2495','read_terms','Прочитать условия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2496','user_initiated_video_call','Пользователь инициировал видеозвонок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2497','invoice_from','Счет от','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2498','accepted','Принято','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2499','sending_limit_reached','Достигнут предел отправки. Пожалуйста, подождите: ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2500','group_role_3','Модератор группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2501','exceeds_guest_nickname_length','Превышен лимит длины ника гостя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2502','septenary_border_color','Септенарный цвет границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2503','repeat_message','Повторить сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2504','on_new_private_video_call','Кто-то инициирует приватный видеозвонок с пользователем','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2505','global_js','Глобальный пользовательский JS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2506','attachments','Вложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2507','fullscreen','Полноэкранный режим','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2508','uploaded_on','Загружено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2509','slideshow','Слайд-шоу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2510','group_role_2','Администратор группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2511','repeat_interval','Интервал повтора (минуты)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2512','no_group_selected','Пустой почтовый ящик','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2513','ad_block_detected_title','Обнаружен AdBlock!','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2514','invoice_to','Счет к оплате','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2515','others','Другие','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2516','bank_receipt','Банковская квитанция','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2517','appkey','Ключ приложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2518','welcome_screen_message','Поделитесь своими мыслями с другими людьми со всего мира, чтобы найти новых друзей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2519','go_offline','Перейти в оффлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2520','enter_is_send','Отправить сообщение клавишей Enter','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2521','invoice_id','ID счета','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2522','chat_page','Страница чата','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2523','invite_link','Ссылка-приглашение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2524','quaternary_text_color','Четвертичный цвет текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2525','add_cron_job','Добавить Cron Job','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2526','repetition_rate','Частота повторения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2527','not_found_page_title','404 - Страница не найдена','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2528','billing_address_not_found','Адрес для выставления счетов не найден. Пожалуйста, обновите вашу информацию для выставления счетов.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2529','group_role_1','Забанен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2530','site_users','Пользователи сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2531','reject_request','Отклонить запрос','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2532','cloud_storage_public_url','Публичный URL','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2533','non_member','Не участник','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2534','web_address','Веб-адрес','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2535','seconds','Секунды','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2536','change_to_offline_status_after','Перейти в оффлайн через (минуты)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2537','role_hierarchy','Иерархия ролей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2538','custom_menu','Пользовательское меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2539','login_as_another_user','Войти как другой пользователь','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2540','billing_info','Информация для выставления счетов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2541','cloud_storage_endpoint','Конечная точка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2542','languages','Языки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2543','memberships','Членства','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2544','custom_avatar','Пользовательский аватар','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2545','custom_pages','Пользовательские страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2546','24_format','24-часовой формат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2547','view_receipt','Просмотреть квитанцию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2548','hide_phone_number_field_in_registration_page','Скрыть поле номера телефона на странице регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2549','messages','Сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2550','live_kit','LiveKit','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2551','billed_to','Счет выставлен на имя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2552','load_profile_on_page_load','Загружать профиль при загрузке страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2553','ad_block_detected_description','Наш сайт поддерживается за счет отображения онлайн-рекламы для наших посетителей. Please consider supporting us by disabling your ad blocker on our website.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2554','ban_from_site','Заблокировать на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2555','street_address','Уличный адрес','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2556','live_kit_api_key','LiveKit API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2557','landing_page_faq_question_10','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2558','show_profile_on_pm_open','Показать профиль при открытии личных сообщений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2559','slug_condition','Ссылка должна содержать хотя бы одну букву','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2560','city','Город','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2561','show_side_navigation_on_load','Показывать боковую навигацию при загрузке','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2562','order','Заказ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2563','add_package','Добавить пакет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2564','phone_number_verification','Верификация номера телефона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2565','friends','Друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2566','own_message_alignment','Выравнивание сообщений [Своих]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2567','live_kit_url','LiveKit URL','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2568','state','Штат/Регион','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2569','on_getting_banned_from_group','Кто-то был заблокирован в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2570','recently_joined','Недавно присоединившиеся','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2571','ad_block_detected_button','Я отключил AdBlock','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2572','country','Страна','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2573','private_chats','Личные чаты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2574','live_kit_secret_key','LiveKit секретный ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2575','hide_language','Скрыть язык','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2576','postal_code','Почтовый индекс','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2577','cloud_storage','Облачное хранилище','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2578','package_name','Название пакета','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2579','on_getting_temporarily_banned_from_group','Кто-то временно заблокирован в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2580','company_address','Адрес компании','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2581','create_group_role','Создать роль группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2582','firebase','Firebase','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2583','landing_page_faq_question_5_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2584','invoice_footer','Примечание внизу счета','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2585','autoplay_audio_player','Автоматическое воспроизведение аудио','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2586','adblock_detector','Детектор Adblock','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2587','default_currency','Валюта по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2588','joined_group','Присоединился к групповому чату','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2589','fb_messagingsenderid','Идентификатор отправителя сообщений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2590','default_currency_symbol','Символ валюты по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2591','login_cookie_validity','Срок действия cookie для входа (в днях)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2592','pricing','Цены','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2593','edit_audio','Редактировать аудио','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2594','date_text','Дата','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2595','gif','GIF','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2596','custom_fields','Пользовательские поля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2597','external_page','Внешняя страница','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2598','edit_cron_job','Редактировать cron-задачу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2599','invoice_total','Итоговая сумма по счету','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2600','cloud_storage_ftp_host','Имя хоста FTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2601','flood_control_error_message','Вы отправляете слишком быстро. Пожалуйста, подождите.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2602','continue_text','Продолжить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2603','manage_adverts','Управление рекламой','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2604','error','Ошибка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2605','edit_site_transactions','Редактировать транзакции на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2606','report_group','Пожаловаться на группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2607','amazon_s3','Amazon S3','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2608','view_order','Просмотр заказа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2609','banned_from_group_message','Вам запрещен доступ к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2610','landing_page_faq_question_5','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2611','membership_package_id','ID пакета членства','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2612','mail_footer_text','Если у вас есть вопросы или проблемы, пожалуйста, напишите нам на email','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2613','users_banned','Заблокированные пользователи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2614','placed_by','Размещен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2615','invalid_captcha','Неверная капча','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2616','s3_compatible','Совместимое хранилище S3','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2617','validate','Подтвердить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2618','typing_indicator','Индикатор набора текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2619','all_group_members','Все члены группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2620','delete_all_messages','Удалить все сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2621','take_action','Принять меры','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2622','fb_apikey','API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2623','onesignal_prompt_message','Мы хотим отправлять вам уведомления о последних обновлениях.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2624','approve_enroll','Одобрить и зарегистрировать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2625','billing_interval','Интервал выставления счетов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2626','done','Готово','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2627','disapprove_unenroll','Отклонить и отменить регистрацию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2628','fb_authdomain','Auth домен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2629','removed_from_group','Удален из группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2630','reassign_site_role','Переназначить роль на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2631','one_time','Один раз','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2632','site_transactions','Транзакции на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2633','invalid_value','Неверное значение или пустое поле','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2634','fb_projectid','ID проекта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2635','success','Успех','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2636','cloud_storage_ftp_username','Имя пользователя FTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2637','streaming_server','Сервер потоковой передачи','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2638','custom_field_3_options','{"male":"Мужчина","female":"Женщина","non_binary":"Небинарный"}','multi_line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2639','monthly','Ежемесячно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2640','pin_groups','Закрепить группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2641','shoutcast','SHOUTcast','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2642','landing_page_faq_question_6','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2643','maximum_storage_space','Максимальное пространство для хранения (МБ)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2644','version','Версия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2645','yearly','Ежегодно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2646','site_role_5','Гость','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2647','ignore_users','Игнорировать пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2648','icecast','Icecast','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2649','system_email_address','Системный email адрес','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2650','question','Вопрос','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2651','custom','Пользовательский','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2652','edit_group_role','Редактировать роль группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2653','on_awarding_group_badges','Группа получила новый значок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2654','mention_everyone','Упомянуть @всех','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2655','transaction_successful_message','Ваша транзакция прошла успешно.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2656','cloud_storage_ftp_password','Пароль FTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2657','no_of_days','Количество дней','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2658','transaction_failed_message','Ваша транзакция не удалась.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2659','cookie_consent_modal_content','Мы можем использовать файлы cookie, веб-маяки, пиксели отслеживания и другие технологии отслеживания при посещении нашего сайта, включая любые другие медиаформы, медиа-каналы, мобильные сайты или мобильные приложения, связанные с ним (совместно «Сайт»), чтобы настроить Сайт и улучшить ваш опыт. Мы оставляем за собой право вносить изменения в эту Политику использования файлов cookie в любое время и по любой причине. Любые изменения или модификации вступят в силу немедленно после публикации обновленной Политики использования файлов cookie на Сайте, и вы отказываетесь от права получать конкретное уведомление о каждом таком изменении или модификации. Мы рекомендуем периодически просматривать эту Политику использования файлов cookie, чтобы быть в курсе обновлений. Считается, что вы были осведомлены, подчиняетесь и приняли изменения в любой пересмотренной Политике использования файлов cookie продолжая использовать Сайт после даты публикации такой пересмотренной Политики использования файлов cookie.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2660','footer_section_status','Статус раздела внизу страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2661','license','Лицензия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2662','related_site_role','Связанная роль на сайте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2663','forward_message','Переслать сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2664','total_orders','Всего заказов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2665','fb_appid','ID приложения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2666','landing_page_faq_question_7','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2667','cloud_storage_ftp_port','Порт FTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2668','successful_orders','Успешные заказы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2669','search_users','Поиск пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2670','confirm_leave','Вы уверены, что хотите покинуть эту группу?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2671','custom_field_2','Дата рождения','one-line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2672','this_month','Этот месяц','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2673','firebase_private_key','Приватный ключ Firebase','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2674','facebook_url','URL Facebook','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2675','headers_footers','Заголовки и подножия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2676','last_run_time','Последнее время запуска','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2677','site_role_id_on_expire','Роль на сайте после истечения срока действия','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2678','error_message','Что-то пошло не так, попробуйте обновить страницу.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2679','custom_field_3','Пол','one-line','1','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2680','last_month','Прошлый месяц','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2681','role_attributes','Атрибуты роли','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2682','web_push_sent_reply_message','Ответил на ваше сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2683','sms_gateway','Шлюз SMS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2684','searchable','Доступен для поиска','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2685','this_year','Этот год','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2686','membership_packages','Пакеты членства','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2687','twilio','Twilio','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2688','name_censored_word_detected','Name contains a censored word','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2689','recent_transactions','Последние транзакции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2690','benefits','Преимущества','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2691','attach_stickers','Прикрепить стикеры','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2692','phone_number','Номер телефона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2693','group_admin_role','Роль администратора группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2694','membership_info','Информация о членстве','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2695','username_censored_word_detected','Имя пользователя содержит запрещенное слово','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2696','profanity_filter','Фильтр нецензурной брани','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2697','invalid_phone_number','Недействительный номер телефона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2698','group_moderator_role','Роль модератора группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2699','boxed','Коробчатый макет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2700','site_terms_conditions','Условия использования сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2701','group_banned_user_role','Роль для забаненных пользователей группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2702','enter_otp','Введите OTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2703','edit_package','Редактировать пакет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2704','show_on_guest_login','Показать на странице входа гостя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2705','site_admin_role','Роль администратора сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2706','slug','Слаг','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2707','link_filter','Фильтр ссылок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2708','filter_username','Фильтр имени пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2709','forward_messages','Пересылка сообщений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2710','verify','Проверить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2711','site_unverified_user_role','Роль для неподтвержденных пользователей сайта (по электронной почте)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2712','landing_page_faq_question_7_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2713','recipient','Получатель','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2714','contains_blacklisted_links','Ваше сообщение содержит заблокированные ссылки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2715','benefit','Выгода','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2716','view_password_protected_groups','Просмотр групп с паролем','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2717','content','Содержимое','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2718','pinned_group','Закреплено','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2719','site_slogan','Слоган сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2720','landing_page_faq_question_8','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2721','total_members','Всего участников','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2722','guest_user_role','Роль сайта для гостей при входе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2723','category','Категория','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2724','web_push_new_pm_message','Отправил вам личное сообщение.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2725','filter_full_name','Фильтр полного имени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2726','user_does_not_exist','Пользователь не существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2727','link_filter_tip','Чтобы заблокировать все страницы и подстраницы домена, просто добавьте звездочку (*) в конце домена в вашем черном списке.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2728','site_banned_user_role','Роль сайта для забаненных пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2729','color_scheme','Цветовая схема','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2730','landing_page_faq_question_8_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2731','membership','Членство','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2732','verify_phone_number','Проверить номер телефона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2733','cloud_storage_ftp_path','Путь FTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2734','view_all','Посмотреть все','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2735','found_duplicate_roles','Выберите отдельную роль для каждого атрибута','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2736','tls','TLS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2737','landing_page_faq_question_9','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2738','laut_fm','Laut.fm','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2739','filter_messages','Фильтровать сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2740','platform','Платформа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2741','create_badge','Создать значок','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2742','verify_phone_number_text','Мы отправляем вам одноразовый пароль на указанный вами мобильный номер. Введите полученный OTP и нажмите на кнопку проверки.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2743','your_current_info','Ваша текущая информация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2744','group_invitation_email_content','Присоединяйтесь к нашему сообществу, где вы можете делиться, учиться и открывать удивительные ресурсы, задавать вопросы, участвовать в разговорах.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2745','landing_page_faq_question_9_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2746','invoice_logo','Логотип счета','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2747','react','Реагировать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2748','add_provider','Добавить поставщика','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2749','resend_otp','Повторно отправить OTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2750','ban_from_group_confirmation','Вы уверены, что хотите забанить этого пользователя из группы?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2751','set_fake_online_users','Установить фиктивных онлайн-пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2752','verify_your_phone_number','Номер телефона не был проверен. Для продолжения, пожалуйста, проверьте.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2753','name','Имя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2754','message_alignment','Выравнивание сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2755','disable_right_click','Отключить правый клик','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2756','page_title','Название страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2757','validate_settings','Проверить настройки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2758','user_pending_approval_email_heading','Ожидающее подтверждение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2759','phone_number_verified','Ваш номер телефона был проверен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2760','user_initiated_audio_call','Пользователь начал аудиовызов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2761','landing_page_faq_question_6_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2762','user_pending_approval_email_content','Новый пользователь зарегистрировался на вашем сайте и в настоящее время ожидает подтверждения. Данные пользователя следующие:','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2763','advanced_search_criteria','Для выполнения поиска необходимо указать хотя бы одно поле для поиска.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2764','line_busy_message','Линия в настоящее время занята текущим аудио/видеозвонком.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2765','denied','Доступ запрещен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2766','transactions','Транзакции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2767','invalid_otp_code','Недействительный код OTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2768','video_audio_chat','Видео/аудио чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2769','samesite_cookies','Куки SameSite','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2770','user_pending_approval_email_subject','Новый пользователь, ожидающий подтверждения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2771','audio_chat','Аудио чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2772','temporary_ban_from_group','Временный бан','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2773','packages','Пакеты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2774','create_audio_chat_groups','Создать группы с аудио-чатом','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2775','cloud_storage_ftp_endpoint','Конечная точка FTP','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2776','user_pending_approval_email_button_label','Перейти на веб-сайт','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2777','sharing_your_location','Поделиться вашим местоположением','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2778','now_playing','Сейчас играет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2779','shared_location','Общее местоположение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2780','pricing_subtitle','Получите больше с подписками: изучение вариантов ценообразования','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2781','view_invisible_users','Просмотр невидимых пользователей (офлайн-режим)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2782','share_location','Поделиться местоположением','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2783','on_private_message_offline','Кто-то отправил личное сообщение, когда вы были офлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2784','preview_pdf_files','Предварительный просмотр PDF файлов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2785','invalid_group_role','Недействительная роль группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2786','welcome_user_email_subject','Добро пожаловать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2787','welcome_user_email_heading','Добро пожаловать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2788','approve_phone_number','Подтвердить номер телефона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2789','welcome_user_email_content','Теплый и сердечный привет! Мы абсолютно рады приветствовать вас как дорогого участника нашего онлайн-сообщества. Не стесняйтесь исследовать, выражать себя и сделать это пространство своим. Мы здесь, чтобы поддержать вас на каждом шагу.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2790','available_packages','Доступные пакеты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2791','web_push_on_friend_request','Отправил вам запрос на добавление в друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2792','assets_folder_missing','Папка «files» отсутствует. [1] Войдите в свою учетную запись облачного хранилища [2] Создайте папку «assets» [3] Загрузите папку «assets/files/» и ее содержимое в папку «assets»','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2793','welcome_user_email_button_label','Исследовать сейчас','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2794','on_friend_request','Кто-то отправил запрос на добавление в друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2795','twilio_account_sid','Twilio Account SID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2796','show_timestamp_on_mouseover','Показать временную метку при наведении мыши','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2797','send_welcome_email','Отправить приветственное письмо','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2798','when_changing_group_role','При изменении роли группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2799','previous','Предыдущий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2800','separate_commas','Разделять запятыми','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2801','email_contents','Содержимое электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2802','line_break_delimiter','Использовать разрыв строки в качестве разделителя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2803','invalid_bucket_name','Недействительное имя корзины','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2804','email_category','Категория электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2805','download_files','Скачать файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2806','offline_page_button','Обновить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2807','welcome_email','Приветственное письмо','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2808','invalid_pwa_icon_dimensions','Используйте изображение размером не менее 512X512 пикселей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2809','verification_email','Письмо для подтверждения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2810','group_invitation_email_heading','У вас есть приглашение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2811','login_link_email','Ссылка для входа по электронной почте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2812','fields','Поля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2813','new_friend_request','Новый запрос в друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2814','sending_limit','Лимит отправки (в минуту)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2815','new_private_message','Новое личное сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2816','on_new_user_pending_approval','Регистрация нового пользователя ожидает одобрения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2817','user_pending_approval','Пользователь ожидает одобрения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2818','twilio_auth_token','Twilio Auth Token','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2819','reset_password','Сбросить пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2820','csrf_token','CSRF токен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2821','updated_user_group_role','Роль группы изменена на','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2822','email_subject','Тема письма','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2823','unleavable_group','Группа, из которой нельзя выйти','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2824','private_conversations','Личные разговоры','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2825','sms_settings','Настройки SMS','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2826','email_heading','Заголовок письма','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2827','delete_all','Удалить все','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2828','dateformat','Формат даты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2829','allow_sharing_email_addresses','Разрешить совместное использование адресов электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2830','email_content','Содержание письма','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2831','request_timeout','Тайм-аут запроса (Long Polling)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2832','set_group_slug','Установить слаг группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2833','enable_photo_upload_on_signup','Включить загрузку фото при регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2834','quinary_text_color','Цвет текста пятого уровня','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2835','email_button_label','Метка кнопки электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2836','sms_src','Отправитель/От номера','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2837','javascript_files','Файлы JavaScript','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2838','select_option','Выбрать вариант из выпадающего списка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2839','register','Регистрация','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2840','landing_page_faq_question_4_answer','','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2841','notification_settings','Настройки уведомлений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2842','group_invitation_email','Приглашение в группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2843','complainant','Жалобщик','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2844','messagebird','MessageBird','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2845','loading_image','Изображение загрузки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2846','sightengine','Sightengine','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2847','conversation','Разговор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2848','required','Обязательно','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2849','change_username','Изменить имя пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2850','google_cloud_vision','Google Cloud Vision','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2851','set_default_group_role_within_group','Установить роль по умолчанию в группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2852','on_updating_group_info','При обновлении информации о группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2853','search_on_change_of_input','Поиск при изменении ввода','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2854','footer','Нижний колонтитул','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2855','messagebird_api_key','MessageBird API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2856','welcome_screen_footer_text','Посещая этот веб-сайт, вы соглашаетесь соблюдать Условия использования','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2857','flood_control_time_difference','Необходимое время между каждым сообщением (в секундах)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2858','read_more','Читать далее','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2859','new_friend_request_email_subject','Получен новый запрос в друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2860','group_role_4','Участник','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2861','blacklist_user_permission_denied','Доступ запрещен: вы не можете блокировать/игнорировать администраторов сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2862','abuse','Злоупотребление','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2863','secret_group','Секретная группа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2864','invalid_credentials','Недействительные учетные данные','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2865','change_email_address','Изменить адрес электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2866','number_field','Числовое поле','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2867','delete_older_than','Удалить старше (минут)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2868','new_friend_request_email_heading','Новый запрос в друзья','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2869','custom_background','Пользовательский фон','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2870','google_cloud_vision_api_key','Google Cloud API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2871','next','Следующий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2872','delete_file_confirmation','Вы уверены, что хотите удалить этот файл?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2873','missing_profile_image','Пожалуйста, загрузите изображение профиля для продолжения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2874','gcv_image_removal_criteria','Удалить изображения, содержащие','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2875','create_public_group','Создать публичную группу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2876','linkedin_url','URL LinkedIn','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2877','pm_only_specific_roles','ЛС только для определенных ролей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2878','adult_content','Контент для взрослых','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2879','selected_package_information','Информация о выбранном пакете','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2880','change_avatar','Изменить аватар','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2881','profile_image','Изображение профиля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2882','spoof_content','Подделка','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2883','new_friend_request_email_content','Вы получили новый запрос в друзья на нашей платформе. Вы можете просмотреть и ответить на этот запрос, войдя в свой аккаунт и перейдя в раздел «Друзья».','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2884','left','Слева','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2885','registration_otp_message','Ваш OTP для регистрации','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2886','medical_content','Медицинский','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2887','default_bg_group_chat','Фоновое изображение по умолчанию [групповой чат]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2888','octonary_border_color','Цвет восьмого уровня границы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2889','hide','Скрыть','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2890','violence_content','Насилие','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2891','available_payment_gateways','Доступные платежные шлюзы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2892','choose_site_roles','Выберите роли сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2893','create_groups','Создать группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2894','racy_content','Эротический контент','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2895','chat_page_footer','Нижний колонтитул (Страница чата)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2896','new_friend_request_email_button_label','Просмотреть запрос','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2897','delete_files','Удалить файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2898','perspective_api','Perspective API','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2899','chat_page_header','Заголовок (Страница чата)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2900','text_moderation','Модерация текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2901','forward','Переслать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2902','price','Цена','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2903','phone_number_exists','Номер телефона уже существует','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2904','view_reactions','Просмотреть реакции','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2905','perspective_google_cloud_api_key','Google Cloud API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2906','default_bg_private_chat','Фоновое изображение по умолчанию [личный чат]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2907','advanced_user_searches','Расширенные поиски пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2908','values','Значения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2909','select_plan','Выбрать план','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2910','video_chat','Видео чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2911','choose_file','Выберите файл','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2912','schedule_cronjob_command_message','Убедитесь, что вы запланировали следующую команду cronjob на своем хостинг-сервере, чтобы скрипт выполнялся автоматически через заданные вами интервалы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2913','background','Фон','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2914','view_email_address','Просмотреть адрес электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2915','access_logs','Журналы доступа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2916','please_note','Обратите внимание','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2917','videos','Видео','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2918','view_phone_number','Просмотреть номер телефона','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2919','clear_chat_history','Очистить историю чатов','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2920','send_email_notification','Отправить уведомление по электронной почте','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2921','welcome_message','Приветственное сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2922','new_private_message_email_subject','Получено новое личное сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2923','quinary_font_size','Размер шрифта пятого уровня','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2924','perspective_api_threshold','Порог Perspective API','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2925','agora','Agora','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2926','toxicity','Токсичность','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2927','realtime_settings','Настройки в реальном времени','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2928','new_private_message_email_heading','Получено новое сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2929','days','Дни','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2930','refresh','Обновить','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2931','pages','Страницы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2932','cloudflare_turnstile','Cloudflare Turnstile','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2933','severe_toxicity','Серьезная токсичность','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2934','septenary_font_size','Размер шрифта седьмого уровня','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2935','profanity','Нецензурная лексика','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2936','attach_files','Прикрепить файлы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2937','select_group','Выберите группу или чат','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2938','threat','Угроза','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2939','vc_twilio_account_sid','Twilio Account SID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2940','unblock_user','Разблокировать пользователя','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2941','identity_attack','Атака на личность','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2942','new_private_message_email_content','Вы получили новое личное сообщение. Пожалуйста, войдите в свою учетную запись, чтобы прочитать сообщение и при необходимости ответить.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2943','insult','Оскорбление','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2944','cron_job_url','URL для cron job','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2945','ip_blacklisted','Ваш IP-адрес в черном списке','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2946','perspectiveapi_text_removal_criteria','Удалить текст, содержащий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2947','menu_items','Пункты меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2948','new_private_message_email_button_label','Просмотреть сообщение','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2949','normalize_text_message','Нормализовать текст сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2950','detected_forbidden_words_content','Ваше сообщение содержит запрещенные слова или контент.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2951','twitch_url','URL Twitch','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2952','group_create_limit','Максимальное количество групп, которые может создать пользователь','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2953','entry_page_footer_text','© 2023. Все права защищены. Название сайта','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2954','exceeded_group_creation_limit','Превышено максимальное количество групп, которые вы можете создать','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2955','switch_color_scheme','Сменить цветовую схему','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2956','hide_fakes','Скрыть подделки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2957','ltr','Слева направо','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2958','show_language','Показать язык','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2959','generate_fake_users','Создать поддельных пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2960','no_of_users','Количество пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2961','gfycat','Gfycat','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2962','skip_text_moderation','Пропустить модерацию текста','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2963','generate_profile_picture','Создать изображение профиля','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2964','confirm_action','Вы уверены, что хотите продолжить?','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2965','invalid_order_id','Недействительный ID заказа','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2966','skip_image_moderation','Пропустить модерацию изображений','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2967','email_domain','Домен электронной почты','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2968','menu_item','Пункт меню','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2969','vc_twilio_auth_token','Twilio Auth Token','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2970','locale','Локаль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2971','show_group_members_count','Показать количество участников группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2972','created','Создано','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2973','videosdk','Видео SDK','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2974','max_fake_users_limit','Максимальное количество поддельных пользователей, которых можно создать за раз, составляет 50.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2975','change_password','Изменить пароль','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2976','total_users','Общее количество пользователей','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2977','ip_intelligence','IP Intelligence','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2978','stay_online','Оставаться онлайн','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2979','set_timezone','Установить часовой пояс','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2980','check_inbox','Мы отправили письмо на ваш адрес электронной почты. Пожалуйста, проверьте свой почтовый ящик.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2981','amount','Сумма','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2982','found_cache_folder_cloud_storage','Обнаружена директория «assets/cache» в вашем облачном хранилище. Вам нужно загрузить только директорию «assets/files». Пожалуйста, удалите директорию «assets/cache/» из облачного хранилища.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2983','temporarily_banned_from_group_message','Вы временно заблокированы для доступа к группе','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2984','vc_twilio_api_key','Twilio API Key (SID)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2985','sort_index','Индекс сортировки','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2986','screen_sharing','Совместное использование экрана','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2987','bank_account_details','Реквизиты банковского счета','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2988','sharing_video','Совместное использование видео','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2989','group_categories','Категории','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2990','proxycheck_io','ProxyCheck.io','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2991','manage_group_categories','Управление категориями групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2992','bank_transfer_details_subheading','Переведите сумму на указанный ниже банковский счет.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2993','video_search_engine','Поисковая система видео','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2994','create_group_category','Создать категорию группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2995','vc_twilio_api_secret_key','Twilio API Secret Key','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2996','video_search_engine_api','API поисковой системы видео','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2997','categorize_groups','Категоризация групп','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2998','bank_transfer_reciept_pending_approval','Загрузка квитанции: ожидание одобрения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('2999','videos_per_load','Видео за загрузку','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3000','category_name','Название категории','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3001','youtube','YouTube','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3002','category_order','Порядок категорий','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3003','search_share_videos','Поиск и обмен видео','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3004','getipintel','GetIPIntel','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3005','create_category','Создать категорию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3006','message_text_formatting','Форматирование текста сообщения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3007','upload_receipt','Загрузить квитанцию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3008','edit_category','Редактировать категорию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3009','selection','Выбор','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3010','vc_agora_app_id','Agora App ID','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3011','category_image','Изображение категории','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3012','membership_expiring','Срок действия вашего пакета членства скоро истечет','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3013','group_category_id','ID категории группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3014','go_homepage','На главную','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3015','membership_expired','Срок действия вашего пакета членства истек','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3016','set_group_category','Установить категорию группы','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3017','default_group_category','Категория группы по умолчанию','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3018','ip_intelligence_api_key','API ключ','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3019','group_order','Порядок групп (по убыванию)','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3020','no_of_groups_landing_page','Количество групп для отображения','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3021','landing_page_packages_section_heading','Пакеты членства','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3022','landing_page_packages_section_description','Получите больше с подписками: исследуйте варианты цен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3023','pricing_menu_item','Цены','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3024','packages_section_status','Секция пакетов членства [Статус]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3025','packages_section_heading','Секция пакетов членства [Заголовок]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3026','packages_section_description','Секция пакетов членства [Описание]','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3027','require_billing_address','Требовать адрес для выставления счета','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3028','under_mainteance_title','Временно недоступен','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3029','under_mainteance_description','Наш сайт в настоящее время на техническом обслуживании. Мы скоро вернемся. Спасибо за ваше терпение.','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3030','under_mainteance_button','Обновить страницу','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3031','under_maintenance_mode','Режим технического обслуживания','one-line','0','0','2');
INSERT INTO gr_language_strings (`string_id`,`string_constant`,`string_value`,`string_type`,`skip_update`,`skip_cache`,`language_id`) VALUES ('3032','maintenance_mode_access_code','URL доступа (режим технического обслуживания)','one-line','0','0','2');



CREATE TABLE `gr_languages` (
  `language_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `text_direction` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_languages` (
  `language_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_code` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `text_direction` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_languages (`language_id`,`name`,`iso_code`,`text_direction`,`disabled`,`updated_on`) VALUES ('1','English','en','ltr','0','2024-05-14 13:26:26');
INSERT INTO gr_languages (`language_id`,`name`,`iso_code`,`text_direction`,`disabled`,`updated_on`) VALUES ('2','russian','ru','ltr','0','2024-05-30 10:57:48');



CREATE TABLE `gr_login_sessions` (
  `login_session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `initiated_ip_address` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csrf_token` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csrf_token_generated_on` datetime NOT NULL,
  `log_device` int(11) NOT NULL DEFAULT '1',
  `login_from_user_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Inactive\r\n1 = Active\r\n2 = Expired',
  `failed_attempts` int(11) NOT NULL,
  `time_stamp` int(11) NOT NULL,
  `last_access` datetime NOT NULL,
  PRIMARY KEY (`login_session_id`),
  KEY `user_id_fk_3` (`user_id`),
  KEY `idx__login_status` (`status`),
  CONSTRAINT `user_id_fk_3` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_login_sessions ADD INDEX user_id_fk_3 (user_id);
ALTER TABLE gr_login_sessions ADD INDEX idx__login_status (status);

CREATE TABLE `gr_login_sessions` (
  `login_session_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `initiated_ip_address` varchar(90) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_code` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `csrf_token` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `csrf_token_generated_on` datetime NOT NULL,
  `log_device` int(11) NOT NULL DEFAULT '1',
  `login_from_user_id` bigint(20) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Inactive\r\n1 = Active\r\n2 = Expired',
  `failed_attempts` int(11) NOT NULL,
  `time_stamp` int(11) NOT NULL,
  `last_access` datetime NOT NULL,
  PRIMARY KEY (`login_session_id`),
  KEY `user_id_fk_3` (`user_id`),
  KEY `idx__login_status` (`status`),
  CONSTRAINT `user_id_fk_3` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('1','1','127.0.0.1','9pSOvZb8wr5zQl2cTi1J','','0000-00-00 00:00:00','1','','2','0','1716406600','2024-05-23 01:29:09');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('2','2','127.0.0.1','1mEpojKAzIO6P0weQZxS','','0000-00-00 00:00:00','1','','2','0','1716408166','2024-05-30 10:18:39');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('3','3','127.0.0.1','aCDA4pMqWNw3yKglXtGd','','0000-00-00 00:00:00','1','','1','0','1716408264','2024-05-31 00:10:46');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('4','1','127.0.0.1','mUpXg1YwMCEZBNiWv7Gk','','0000-00-00 00:00:00','1','','1','3','1716941858','2024-05-30 00:18:39');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('5','3','127.0.0.1','4Zv6VdriDbC8ofzU273t','','0000-00-00 00:00:00','1','','0','2','1716941873','2024-05-29 05:48:02');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('6','1','127.0.0.1','4IFb7WvzmjguDdaOlCwU','','0000-00-00 00:00:00','1','','1','0','1717032740','2024-05-31 00:30:42');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('7','1','127.0.0.1','Xjh3J7E6wYT1P0zbDn8W','','0000-00-00 00:00:00','1','','1','0','1717044564','2024-05-30 21:00:53');
INSERT INTO gr_login_sessions (`login_session_id`,`user_id`,`initiated_ip_address`,`access_code`,`csrf_token`,`csrf_token_generated_on`,`log_device`,`login_from_user_id`,`status`,`failed_attempts`,`time_stamp`,`last_access`) VALUES ('8','4','127.0.0.1','2vtMmKVoGJzjiuWq57lT','','0000-00-00 00:00:00','1','','1','0','1717047158','2024-05-30 22:17:00');



CREATE TABLE `gr_mailbox` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_addresses` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `email_parameters` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending\r\n1 = Send\r\n2 = Failed',
  `mail_error_log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_mailbox` (
  `mail_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_addresses` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_category` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `email_parameters` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending\r\n1 = Send\r\n2 = Failed',
  `mail_error_log` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_membership_orders` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `membership_package_id` bigint(20) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending\r\n1 - Success\r\n2 - Failed\r\n3 - Requires Validation',
  `payment_gateway_id` bigint(20) DEFAULT NULL,
  `transaction_info` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_membership_orders` (
  `order_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `membership_package_id` bigint(20) NOT NULL,
  `order_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Pending\r\n1 - Success\r\n2 - Failed\r\n3 - Requires Validation',
  `payment_gateway_id` bigint(20) DEFAULT NULL,
  `transaction_info` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_membership_packages` (
  `membership_package_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_recurring` int(11) NOT NULL DEFAULT '0',
  `pricing` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '30',
  `related_site_role_id` bigint(20) NOT NULL,
  `site_role_id_on_expire` bigint(20) NOT NULL,
  `package_sort_index` bigint(20) NOT NULL DEFAULT '1',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`membership_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_membership_packages` (
  `membership_package_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_recurring` int(11) NOT NULL DEFAULT '0',
  `pricing` int(11) NOT NULL DEFAULT '0',
  `duration` int(11) NOT NULL DEFAULT '30',
  `related_site_role_id` bigint(20) NOT NULL,
  `site_role_id_on_expire` bigint(20) NOT NULL,
  `package_sort_index` bigint(20) NOT NULL DEFAULT '1',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`membership_package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_payment_gateways` (
  `payment_gateway_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`payment_gateway_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_payment_gateways` (
  `payment_gateway_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credentials` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`payment_gateway_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_private_chat_messages` (
  `private_chat_message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `private_conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `original_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filtered_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_message` int(11) NOT NULL DEFAULT '0',
  `parent_message_id` bigint(20) DEFAULT NULL,
  `attachment_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reactions` text COLLATE utf8mb4_unicode_ci,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Unread\r\n1 = Read',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`private_chat_message_id`),
  KEY `private_conversation_id_fk` (`private_conversation_id`),
  KEY `user_id_fk_12` (`user_id`),
  KEY `private_message_id_fk_2` (`parent_message_id`),
  KEY `idx__read_status_private_conversation_id_user_id` (`read_status`,`private_conversation_id`,`user_id`),
  KEY `idx__user_id_read_status_private_conversation_id` (`user_id`,`read_status`,`private_conversation_id`),
  CONSTRAINT `private_conversation_id_fk` FOREIGN KEY (`private_conversation_id`) REFERENCES `gr_private_conversations` (`private_conversation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `private_message_id_fk_2` FOREIGN KEY (`parent_message_id`) REFERENCES `gr_private_chat_messages` (`private_chat_message_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_12` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_private_chat_messages ADD INDEX private_conversation_id_fk (private_conversation_id);
ALTER TABLE gr_private_chat_messages ADD INDEX user_id_fk_12 (user_id);
ALTER TABLE gr_private_chat_messages ADD INDEX private_message_id_fk_2 (parent_message_id);
ALTER TABLE gr_private_chat_messages ADD INDEX idx__read_status_private_conversation_id_user_id (read_status);
ALTER TABLE gr_private_chat_messages ADD INDEX idx__read_status_private_conversation_id_user_id (private_conversation_id);
ALTER TABLE gr_private_chat_messages ADD INDEX idx__read_status_private_conversation_id_user_id (user_id);
ALTER TABLE gr_private_chat_messages ADD INDEX idx__user_id_read_status_private_conversation_id (user_id);
ALTER TABLE gr_private_chat_messages ADD INDEX idx__user_id_read_status_private_conversation_id (read_status);
ALTER TABLE gr_private_chat_messages ADD INDEX idx__user_id_read_status_private_conversation_id (private_conversation_id);

CREATE TABLE `gr_private_chat_messages` (
  `private_chat_message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `private_conversation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `original_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `filtered_message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_message` int(11) NOT NULL DEFAULT '0',
  `parent_message_id` bigint(20) DEFAULT NULL,
  `attachment_type` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_preview` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_reactions` text COLLATE utf8mb4_unicode_ci,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Unread\r\n1 = Read',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`private_chat_message_id`),
  KEY `private_conversation_id_fk` (`private_conversation_id`),
  KEY `user_id_fk_12` (`user_id`),
  KEY `private_message_id_fk_2` (`parent_message_id`),
  KEY `idx__read_status_private_conversation_id_user_id` (`read_status`,`private_conversation_id`,`user_id`),
  KEY `idx__user_id_read_status_private_conversation_id` (`user_id`,`read_status`,`private_conversation_id`),
  CONSTRAINT `private_conversation_id_fk` FOREIGN KEY (`private_conversation_id`) REFERENCES `gr_private_conversations` (`private_conversation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `private_message_id_fk_2` FOREIGN KEY (`parent_message_id`) REFERENCES `gr_private_chat_messages` (`private_chat_message_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_12` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_private_chat_messages_reactions` (
  `private_chat_message_reaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `private_chat_message_id` bigint(20) NOT NULL,
  `reaction_id` int(11) NOT NULL COMMENT '1 = Like 2 = Love 3 = Haha 4 = Wow 5 = Sad 6 = Angry',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`private_chat_message_reaction_id`),
  KEY `user_id_fk_27` (`user_id`),
  KEY `private_chat_message_id_fk_1` (`private_chat_message_id`),
  CONSTRAINT `private_chat_message_id_fk_1` FOREIGN KEY (`private_chat_message_id`) REFERENCES `gr_private_chat_messages` (`private_chat_message_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_27` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_private_chat_messages_reactions ADD INDEX user_id_fk_27 (user_id);
ALTER TABLE gr_private_chat_messages_reactions ADD INDEX private_chat_message_id_fk_1 (private_chat_message_id);

CREATE TABLE `gr_private_chat_messages_reactions` (
  `private_chat_message_reaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `private_chat_message_id` bigint(20) NOT NULL,
  `reaction_id` int(11) NOT NULL COMMENT '1 = Like 2 = Love 3 = Haha 4 = Wow 5 = Sad 6 = Angry',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`private_chat_message_reaction_id`),
  KEY `user_id_fk_27` (`user_id`),
  KEY `private_chat_message_id_fk_1` (`private_chat_message_id`),
  CONSTRAINT `private_chat_message_id_fk_1` FOREIGN KEY (`private_chat_message_id`) REFERENCES `gr_private_chat_messages` (`private_chat_message_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_27` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_private_conversations` (
  `private_conversation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator_user_id` bigint(20) NOT NULL,
  `recipient_user_id` bigint(20) NOT NULL,
  `initiator_load_message_id_from` bigint(20) DEFAULT NULL,
  `recipient_load_message_id_from` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`private_conversation_id`),
  KEY `idx__initiator_user_id_recipient_user_id` (`initiator_user_id`,`recipient_user_id`),
  KEY `idx__recipient_user_id_initiator_user_id` (`recipient_user_id`,`initiator_user_id`),
  CONSTRAINT `user_id_fk_13` FOREIGN KEY (`recipient_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_14` FOREIGN KEY (`initiator_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_private_conversations ADD INDEX idx__initiator_user_id_recipient_user_id (initiator_user_id);
ALTER TABLE gr_private_conversations ADD INDEX idx__initiator_user_id_recipient_user_id (recipient_user_id);
ALTER TABLE gr_private_conversations ADD INDEX idx__recipient_user_id_initiator_user_id (recipient_user_id);
ALTER TABLE gr_private_conversations ADD INDEX idx__recipient_user_id_initiator_user_id (initiator_user_id);

CREATE TABLE `gr_private_conversations` (
  `private_conversation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `initiator_user_id` bigint(20) NOT NULL,
  `recipient_user_id` bigint(20) NOT NULL,
  `initiator_load_message_id_from` bigint(20) DEFAULT NULL,
  `recipient_load_message_id_from` bigint(20) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`private_conversation_id`),
  KEY `idx__initiator_user_id_recipient_user_id` (`initiator_user_id`,`recipient_user_id`),
  KEY `idx__recipient_user_id_initiator_user_id` (`recipient_user_id`,`initiator_user_id`),
  CONSTRAINT `user_id_fk_13` FOREIGN KEY (`recipient_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_14` FOREIGN KEY (`initiator_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_push_subscriptions` (
  `push_subscriber_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `push_notification_service` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`push_subscriber_id`),
  KEY `user_id_fk_21` (`user_id`),
  CONSTRAINT `user_id_fk_21` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_push_subscriptions ADD INDEX user_id_fk_21 (user_id);

CREATE TABLE `gr_push_subscriptions` (
  `push_subscriber_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `device_token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `push_notification_service` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`push_subscriber_id`),
  KEY `user_id_fk_21` (`user_id`),
  CONSTRAINT `user_id_fk_21` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_realtime_logs` (
  `realtime_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_parameters` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`realtime_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_realtime_logs` (
  `realtime_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `log_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_parameters` text COLLATE utf8mb4_unicode_ci,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`realtime_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_scheduled_messages` (
  `scheduled_message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `repeat_message` int(11) NOT NULL DEFAULT '0' COMMENT '0 = No, 1 = Yes',
  `repeat_interval` int(11) NOT NULL,
  `repetition_rate` int(11) NOT NULL,
  `iteration_count` int(11) NOT NULL DEFAULT '0',
  `send_message_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`scheduled_message_id`),
  KEY `group_id_fk_9` (`group_id`),
  KEY `user_id_fk_25` (`user_id`),
  CONSTRAINT `group_id_fk_9` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_25` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_scheduled_messages ADD INDEX group_id_fk_9 (group_id);
ALTER TABLE gr_scheduled_messages ADD INDEX user_id_fk_25 (user_id);

CREATE TABLE `gr_scheduled_messages` (
  `scheduled_message_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `message_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `repeat_message` int(11) NOT NULL DEFAULT '0' COMMENT '0 = No, 1 = Yes',
  `repeat_interval` int(11) NOT NULL,
  `repetition_rate` int(11) NOT NULL,
  `iteration_count` int(11) NOT NULL DEFAULT '0',
  `send_message_on` datetime NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`scheduled_message_id`),
  KEY `group_id_fk_9` (`group_id`),
  KEY `user_id_fk_25` (`user_id`),
  CONSTRAINT `group_id_fk_9` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_25` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT '0',
  `category` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other_settings',
  `field_attributes` text COLLATE utf8mb4_unicode_ci,
  `settings_order` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_settings` (
  `setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `setting` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` int(11) NOT NULL DEFAULT '0',
  `category` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other_settings',
  `field_attributes` text COLLATE utf8mb4_unicode_ci,
  `settings_order` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('1','site_name','0','Site Name','1','general_settings','','1','2022-01-20 14:28:51');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('2','site_description','textarea','Share what is on your mind with other people from all around the world to find new friends.','1','general_settings','','2','2022-01-27 14:02:45');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('3','site_slogan','0','Your Slogan Goes Here','1','general_settings','','3','2022-01-20 14:29:04');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('4','meta_title','0','Meet New Friends on Site Name','1','general_settings','','4','2022-01-20 23:41:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('5','default_timezone','select','Asia/Kolkata','1','general_settings','','8','2023-05-12 05:00:31');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('6','captcha','["disable","hcaptcha","google_recaptcha_v2","cloudflare_turnstile"]','disable','0','login_settings','','8','2023-04-06 06:05:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('7','captcha_site_key','0','','0','login_settings','','9','2023-04-06 06:05:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('8','captcha_secret_key','0','','0','login_settings','','10','2023-04-06 06:05:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('9','default_language','select','1','1','general_settings','','9','2022-02-15 09:51:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('10','guest_login','["enable","disable"]','enable','0','login_settings','','2','2022-01-21 01:37:18');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('11','sender_name','0','Site Name','0','email_settings','','7','2022-01-20 23:44:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('12','user_email_verification','["enable","disable"]','disable','0','login_settings','','4','2024-02-02 01:53:53');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('13','smtp_authentication','["enable","disable"]','disable','0','email_settings','','1','2024-03-16 14:46:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('14','smtp_host','0','','0','email_settings','','3','2024-03-16 14:46:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('15','system_email_address','0','email@systemdomain.test','0','email_settings','','2','2024-03-16 14:46:35');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('16','smtp_username','0','','0','email_settings','','4','2024-03-16 14:46:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('17','smtp_password','0','','0','email_settings','','5','2024-03-16 14:46:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('18','smtp_protocol','["ssl","tls"]','tls','0','email_settings','','6','2022-01-20 23:44:34');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('19','smtp_port','[25,587,465,2525]','587','0','email_settings','','8','2021-09-23 00:50:10');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('20','gif_search_engine','["disable","tenor","gfycat","giphy"]','disable','0','message_settings','','5','2024-05-15 00:26:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('21','gif_search_engine_api','0','','0','message_settings','','6','2024-05-15 00:26:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('22','gifs_per_load','number','25','0','message_settings','','7','2021-07-22 15:56:00');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('23','records_per_call','number','25','1','general_settings','','10','2024-05-06 12:42:44');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('24','messages_per_call','number','25','1','message_settings','','1','2021-06-23 15:52:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('25','refresh_rate','number','3000','1','realtime_settings','','3','2024-04-30 23:55:43');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('26','request_timeout','number','1','1','realtime_settings','','4','2023-09-08 10:32:05');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('27','minimum_message_length','number','1','1','message_settings','','12','2022-01-21 23:45:15');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('28','maximum_message_length','number','2000','1','message_settings','','13','2022-01-23 14:59:36');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('29','read_more_criteria','number','250','1','message_settings','','14','2022-01-23 23:34:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('30','force_https','["yes","no"]','no','0','general_settings','','11','2022-01-20 15:33:03');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('31','non_latin_usernames','["enable","disable"]','enable','0','login_settings','','3','2021-06-23 15:52:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('32','system_messages_groups','[multi_select]["on_group_creation","on_join_group_chat","on_removal_from_group","on_leaving_group_chat","on_awarding_group_badges","on_getting_banned_from_group","on_getting_unbanned_from_group","on_getting_temporarily_banned_from_group","on_updating_group_info","when_changing_group_role"]','a:10:{i:0;s:17:"on_group_creation";i:1;s:18:"on_join_group_chat";i:2;s:21:"on_removal_from_group";i:3;s:21:"on_leaving_group_chat";i:4;s:24:"on_awarding_group_badges";i:5;s:28:"on_getting_banned_from_group";i:6;s:30:"on_getting_unbanned_from_group";i:7;s:40:"on_getting_temporarily_banned_from_group";i:8;s:22:"on_updating_group_info";i:9;s:24:"when_changing_group_role";}','0','notification_settings','','11','2024-05-15 00:28:07');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('33','site_notifications','[multi_select]["on_user_mention_group_chat","on_group_invitation","on_new_site_badges","on_reply_group_messages"]','a:4:{i:0;s:26:"on_user_mention_group_chat";i:1;s:19:"on_group_invitation";i:2;s:18:"on_new_site_badges";i:3;s:23:"on_reply_group_messages";}','0','notification_settings','','10','2024-05-15 00:28:07');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('34','login_cookie_validity','number','30','0','login_settings','','6','2022-10-28 11:58:43');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('35','gravatar','["enable","disable"]','disable','0','login_settings','','20','2021-06-23 15:52:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('36','minimum_username_length','number','4','0','login_settings','','10','2021-06-23 15:52:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('37','maximum_username_length','number','30','0','login_settings','','11','2021-06-23 15:52:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('38','group_join_confirmation','["enable","disable"]','enable','0','general_settings','','12','2022-01-20 15:38:52');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('39','view_groups_without_login','["enable","disable"]','enable','0','general_settings','','13','2024-05-04 16:39:37');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('40','api_secret_key','0','ymMb0OUep','0','general_settings','','14','2024-05-15 00:23:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('41','dateformat','["dmy_format","mdy_format","ymd_format"]','dmy_format','0','general_settings','','15','2023-08-22 22:47:08');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('42','autoplay_audio_player','["yes","no"]','no','0','general_settings','','16','2022-04-02 20:10:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('43','cookie_consent','["enable","disable"]','enable','0','general_settings','','17','2022-01-20 21:58:26');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('44','notification_tone','select','assets/files/sound_notifications/case-closed.mp3','1','realtime_settings','','5','2024-04-30 23:55:43');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('45','google_analytics_id','0','','0','general_settings','','18','2022-01-20 22:29:56');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('46','time_format','["24_format","12_format"]','12_format','1','general_settings','','19','2022-06-27 01:23:34');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('47','on_load_guest_login_window','["enable","disable"]','disable','0','login_settings','','23','2022-01-21 02:48:09');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('48','color_scheme','["light_mode","dark_mode"]','dark_mode','1','general_settings','','20','2024-05-04 14:37:00');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('49','default_font','select','inter','1','general_settings','','21','2023-09-21 19:15:41');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('50','ffmpeg','["enable","disable"]','disable','0','general_settings','','22','2024-05-12 21:37:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('51','ffmpeg_binaries_path','0','','0','general_settings','','23','2024-05-15 00:23:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('52','profanity_filter','["enable","disable","strict_mode"]','enable','0','other_settings','','0','2022-06-14 13:24:38');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('53','firewall','["enable","disable"]','disable','0','other_settings','','0','2023-09-24 14:01:39');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('54','maximum_login_attempts','number','10','0','login_settings','','26','2021-06-23 15:52:17');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('55','ffprobe_binaries_path','0','','0','general_settings','','24','2024-05-15 00:23:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('56','user_registration','["enable","disable"]','enable','0','login_settings','','1','2022-01-31 17:48:26');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('57','push_notifications','["disable","webpushr","onesignal", "firebase"]','disable','1','notification_settings','{"class":"field toggle_form_fields","hide_field":"web_push_fields","show_fields":"onesignal|onesignal,webpushr|webpushr,firebase|firebase"}','1','2024-02-02 01:57:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('58','send_push_notification','[multi_select]["on_private_message","on_private_message_offline","on_friend_request","on_new_private_video_call","on_user_mention_group_chat","on_reply_group_messages"]','a:5:{i:0;s:26:"on_private_message_offline";i:1;s:17:"on_friend_request";i:2;s:25:"on_new_private_video_call";i:3;s:26:"on_user_mention_group_chat";i:4;s:23:"on_reply_group_messages";}','0','notification_settings','','8','2024-05-15 00:28:07');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('59','onesignal_app_id','','','0','notification_settings','{"class":"field web_push_fields onesignal d-none"}','2','2023-09-24 14:06:58');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('60','onesignal_rest_api_key','','','0','notification_settings','{"class":"field web_push_fields onesignal d-none"}','3','2023-09-24 14:06:58');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('61','onesignal_safari_web_id','','','0','notification_settings','{"class":"field web_push_fields onesignal d-none"}','4','2022-03-21 01:16:35');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('62','webpushr_public_key','','','0','notification_settings','{"class":"field web_push_fields webpushr d-none"}','5','2023-11-07 00:01:02');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('63','webpushr_rest_api_key','','','0','notification_settings','{"class":"field web_push_fields webpushr d-none"}','6','2023-11-07 00:01:02');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('64','webpushr_authentication_token','','','0','notification_settings','{"class":"field web_push_fields webpushr d-none"}','7','2023-11-07 00:01:02');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('65','progressive_web_application','["enable","disable"]','enable','0','pwa_settings','','1','2024-05-30 10:21:15');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('66','pwa_name','','Site Name','0','pwa_settings','','2','2022-01-27 14:05:26');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('67','pwa_short_name','','Site Name','0','pwa_settings','','3','2022-01-27 14:05:26');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('68','pwa_background_color','color','#000000','0','pwa_settings','','5','2022-11-09 17:32:28');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('69','pwa_theme_color','color','#020202','0','pwa_settings','','6','2022-04-05 08:31:23');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('70','pwa_description','textarea','Share what is on your mind with other people from all around the world to find new friends.','0','pwa_settings','','4','2022-01-27 14:05:26');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('71','pwa_display','["standalone","minimal-ui","fullscreen","browser"]','fullscreen','0','pwa_settings','','7','2024-05-30 10:21:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('72','gif_content_filtering','["high","medium","low","off"]','off','0','message_settings','','8','2022-04-11 13:32:19');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('73','message_alignment','["left","right"]','left','1','message_settings','','2','2022-10-28 03:29:26');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('74','own_message_alignment','["left","right"]','left','1','message_settings','','3','2024-05-08 13:31:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('75','play_notification_sound','[multi_select]["on_new_message","on_new_site_notification","on_group_unread_count_change","on_private_conversation_unread_count_change"]','a:4:{i:0;s:14:"on_new_message";i:1;s:24:"on_new_site_notification";i:2;s:28:"on_group_unread_count_change";i:3;s:43:"on_private_conversation_unread_count_change";}','0','realtime_settings','','6','2024-05-15 01:05:38');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('76','entry_page_background','["slideshow","static_image"]','slideshow','0','login_settings','','21','2022-03-20 04:20:40');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('77','change_to_idle_status_after','number','3','0','realtime_settings','','1','2022-04-06 05:57:12');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('78','change_to_offline_status_after','number','5','0','realtime_settings','','2','2022-04-06 05:57:12');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('79','chat_page_boxed_layout','["enable","disable"]','disable','0','general_settings','','26','2024-05-30 11:04:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('80','facebook_url','','#facebook','0','other_settings','','0','2022-03-19 10:05:13');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('81','instagram_url','','#Instagram','0','other_settings','','0','2022-03-19 10:06:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('82','twitter_url','','#Twitter','0','other_settings','','0','2022-03-20 04:38:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('83','linkedin_url','','#LinkedIn','0','other_settings','','0','2022-03-19 10:06:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('84','twitch_url','','#Twitch','0','other_settings','','0','2022-03-19 10:37:58');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('85','landing_page','["enable","disable"]','disable','0','other_settings','','0','2024-05-30 11:00:05');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('86','enter_is_send','["enable","disable"]','enable','0','message_settings','','4','2022-04-05 14:25:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('87','disallowed_slugs','textarea','a:0:{}','0','general_settings','','41','2024-05-30 11:06:01');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('88','mini_audio_player','["enable","disable"]','enable','0','general_settings','','27','2022-04-05 15:51:38');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('89','load_group_info_on_group_load','["enable","disable"]','disable','0','general_settings','','28','2024-05-30 10:25:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('90','new_user_approval','["enable","disable"]','disable','0','login_settings','','5','2024-01-30 22:30:11');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('91','custom_login_url','','','0','login_settings','','24','2022-04-08 07:34:54');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('92','custom_url_on_logout','','','0','login_settings','','25','2022-04-08 07:24:11');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('93','hero_section_animation','["enable","disable"]','enable','0','other_settings','','0','2022-04-10 12:27:34');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('94','hide_group_member_list_from_non_members','["yes","no"]','no','0','general_settings','','29','2022-06-07 23:39:13');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('95','display_full_file_name_of_attachments','["yes","no"]','no','0','general_settings','','30','2023-04-23 14:09:05');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('96','groups_section_status','["enable","disable"]','enable','0','other_settings','','0','2022-06-10 10:15:37');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('97','faq_section_status','["enable","disable"]','enable','0','other_settings','','0','2022-06-10 10:15:37');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('98','view_public_group_messages_non_member','["enable","disable"]','enable','0','general_settings','','32','2022-06-13 10:38:30');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('99','hide_name_field_in_registration_page','["yes","no"]','no','0','login_settings','','16','2022-06-20 07:01:09');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('100','hide_email_address_field_in_registration_page','["yes","no"]','no','0','login_settings','','17','2022-11-18 07:02:41');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('101','hide_username_field_in_registration_page','["yes","no"]','no','0','login_settings','','18','2022-06-20 07:08:11');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('102','image_moderation','["disable","sightengine","google_cloud_vision"]','disable','0','moderation_settings','{"class":"field toggle_form_fields","hide_field":"image_mod_fields","show_fields":"sightengine|sightengine,google_cloud_vision|google_cloud_vision"}','5','2024-02-02 01:56:35');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('103','sightengine_api_user','','','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','6','2023-09-24 14:06:32');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('104','sightengine_api_secret','','','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','7','2023-09-24 14:06:32');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('105','image_removal_criteria','[multi_select]["partial_nudity","explicit_nudity","wad_content","offensive_signs_gestures","graphic_violence_gore"]','a:5:{i:0;s:14:"partial_nudity";i:1;s:15:"explicit_nudity";i:2;s:11:"wad_content";i:3;s:24:"offensive_signs_gestures";i:4;s:21:"graphic_violence_gore";}','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','8','2024-05-15 00:27:43');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('106','minimum_score_required_partial_nudity','number','40','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','9','2022-06-23 00:06:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('107','minimum_score_required_explicit_nudity','number','60','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','10','2022-06-23 00:06:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('108','minimum_score_required_wad_content','number','60','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','11','2022-06-23 00:05:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('109','minimum_score_required_offensive','number','60','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','12','2022-06-23 00:05:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('110','minimum_score_required_graphic_violence_gore','number','70','0','moderation_settings','{"class":"field image_mod_fields sightengine d-none"}','13','2022-06-23 00:09:09');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('111','minimum_full_name_length','number','5','0','login_settings','','14','2022-10-28 22:52:51');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('112','maximum_full_name_length','number','30','0','login_settings','','15','2022-10-09 08:46:22');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('113','friend_system','["enable","disable"]','enable','0','general_settings','','34','2022-10-10 08:25:07');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('114','display_username_group_chats','["enable","disable"]','disable','0','message_settings','','15','2024-05-31 00:20:12');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('115','display_username_private_chats','["enable","disable"]','disable','0','message_settings','','16','2024-05-31 00:19:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('116','compress_video_files','["enable","disable"]','disable','0','general_settings','','36','2024-05-15 00:23:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('117','compress_image_files','["enable","disable"]','disable','0','general_settings','','37','2024-02-02 01:52:31');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('118','compress_audio_files','["enable","disable"]','disable','0','general_settings','','38','2024-05-15 00:23:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('119','people_nearby_feature','["enable","disable"]','disable','0','general_settings','','31','2024-05-30 10:25:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('120','people_nearby_max_distance','number','100','0','general_settings','','33','2022-10-21 01:36:56');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('121','allow_guest_users_create_accounts','["yes","no"]','yes','0','login_settings','','22','2022-10-21 19:07:01');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('122','email_validator','["enable","disable","strict_mode"]','enable','0','other_settings','','0','2022-10-28 22:35:28');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('123','show_timestamp_on_mouseover','["enable","disable"]','disable','0','message_settings','','17','2024-05-30 10:23:04');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('124','search_on_change_of_input','["enable","disable"]','disable','0','general_settings','','39','2022-10-27 22:47:13');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('125','show_side_navigation_on_load','["yes","no"]','no','0','general_settings','','40','2024-05-30 11:06:01');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('126','cloud_storage','["disable", "amazon_s3","s3_compatible"]','disable','1','cloud_storage','{"class":"field toggle_form_fields","hide_field":"cloud_storage_fields","show_fields":"amazon_s3|s3_compatible,ftp_storage|ftp_storage,s3_compatible|s3_compatible"}','1','2024-02-25 14:23:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('127','cloud_storage_api_key','','','0','cloud_storage','{"class":"field cloud_storage_fields s3_compatible d-none"}','2','2024-02-25 14:23:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('128','cloud_storage_secret_key','','','0','cloud_storage','{"class":"field cloud_storage_fields s3_compatible d-none"}','3','2024-02-25 14:23:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('129','cloud_storage_region','','','0','cloud_storage','{"class":"field cloud_storage_fields s3_compatible d-none"}','4','2024-02-25 14:23:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('130','cloud_storage_bucket_name','','','0','cloud_storage','{"class":"field cloud_storage_fields s3_compatible d-none"}','5','2024-02-25 14:23:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('131','cloud_storage_endpoint','','','0','cloud_storage','{"class":"field cloud_storage_fields s3_compatible d-none"}','6','2024-02-25 14:23:57');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('132','cloud_storage_ftp_host','','','0','cloud_storage','{"class":"field cloud_storage_fields ftp_storage d-none"}','2','2022-04-05 08:00:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('133','cloud_storage_ftp_username','','','0','cloud_storage','{"class":"field cloud_storage_fields ftp_storage d-none"}','3','2022-04-05 08:00:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('134','cloud_storage_ftp_password','','','0','cloud_storage','{"class":"field cloud_storage_fields ftp_storage d-none"}','4','2022-04-05 08:00:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('135','cloud_storage_ftp_port','number','','0','cloud_storage','{"class":"field cloud_storage_fields ftp_storage d-none"}','5','2022-04-05 08:00:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('136','cloud_storage_ftp_path','','','0','cloud_storage','{"class":"field cloud_storage_fields ftp_storage d-none"}','6','2022-04-05 08:00:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('137','cloud_storage_ftp_endpoint','','','0','cloud_storage','{"class":"field cloud_storage_fields ftp_storage d-none"}','7','2022-04-05 08:00:24');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('138','hide_phone_number_field_in_registration_page','["yes","no"]','no','0','login_settings','','19','2022-06-20 07:08:11');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('139','phone_number_verification','["enable","disable"]','disable','0','sms_settings','','1','2023-04-23 01:00:37');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('140','sms_gateway','["disable","twilio","messagebird"]','disable','0','sms_settings','{"class":"field toggle_form_fields","hide_field":"sms_gateway_fields","show_fields":"twilio|twilio,messagebird|messagebird"}','2','2023-09-24 14:04:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('141','twilio_account_sid','','','0','sms_settings','{"class":"field sms_gateway_fields twilio d-none"}','3','2023-04-05 02:57:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('142','twilio_auth_token','','','0','sms_settings','{"class":"field sms_gateway_fields twilio d-none"}','4','2023-04-05 02:57:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('143','sms_src','','','0','sms_settings','','6','2023-04-05 02:57:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('144','messagebird_api_key','','','0','sms_settings','{"class":"field sms_gateway_fields messagebird d-none"}','5','2023-04-05 02:57:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('145','ip_intelligence','["disable","proxycheck_io","getipintel"]','disable','0','ip_intelligence','','1','2023-04-11 15:26:42');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('146','ip_intelligence_api_key','','','0','ip_intelligence','','2','2023-04-11 14:07:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('147','ip_intelligence_probability','','50','0','ip_intelligence','','3','2023-04-11 14:59:50');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('148','ip_intel_validate_on_login','["yes","no"]','yes','0','ip_intelligence','','4','2023-04-11 14:33:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('149','ip_intel_validate_on_register','["yes","no"]','yes','0','ip_intelligence','','5','2023-04-11 14:33:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('150','minimum_guest_nickname_length','number','5','0','login_settings','','12','2022-10-28 22:52:51');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('151','maximum_guest_nickname_length','number','30','0','login_settings','','13','2022-10-09 08:46:22');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('152','adblock_detector','["enable","disable"]','disable','0','general_settings','','35','2024-05-15 00:23:46');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('153','footer_section_status','["enable","disable"]','enable','0','other_settings','','0','2023-04-15 16:43:37');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('154','profanity_filter_username','["enable","disable","strict_mode"]','enable','0','other_settings','','0','2023-04-17 06:33:25');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('155','profanity_filter_full_name','["enable","disable","strict_mode"]','enable','0','other_settings','','0','2023-04-17 06:33:25');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('156','enable_photo_upload_on_signup','["yes","no","required"]','yes','0','login_settings','','7','2023-04-22 04:25:54');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('157','send_email_notification','[multi_select]["on_private_message_offline","on_friend_request", "on_new_user_pending_approval"]','a:1:{i:0;s:28:"on_new_user_pending_approval";}','0','notification_settings','','9','2024-05-15 00:28:07');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('158','smtp_self_signed_certificate','["yes","no"]','no','0','email_settings','','9','2023-04-23 11:29:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('159','cloud_storage_public_url','','','0','cloud_storage','','8','2024-02-01 15:46:07');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('160','show_profile_on_pm_open','["enable","disable"]','disable','0','general_settings','','25','2024-05-30 11:06:01');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('161','video_chat','["disable","agora","live_kit"]','disable','0','video_audio_chat','{"class":"field toggle_form_fields","hide_field":"video_chat_fields","show_fields":"twilio|twilio,agora|agora,live_kit|live_kit"}','1','2024-05-15 00:27:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('162','vc_twilio_account_sid','','','0','video_audio_chat','{"class":"field video_chat_fields twilio d-none"}','3','2024-02-02 01:55:53');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('163','vc_twilio_auth_token','','','0','video_audio_chat','{"class":"field video_chat_fields twilio d-none"}','4','2024-02-02 01:55:53');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('164','vc_twilio_api_key','','','0','video_audio_chat','{"class":"field video_chat_fields twilio d-none"}','5','2024-02-02 01:55:53');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('165','vc_twilio_api_secret_key','','','0','video_audio_chat','{"class":"field video_chat_fields twilio d-none"}','6','2024-02-02 01:55:53');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('166','vc_agora_app_id','','','0','video_audio_chat','{"class":"field video_chat_fields agora d-none"}','7','2024-05-15 00:27:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('167','vc_agora_app_certificate','','','0','video_audio_chat','{"class":"field video_chat_fields agora d-none"}','8','2024-05-15 00:27:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('168','memberships','["enable","disable"]','enable','0','memberships','','1','2023-10-01 20:56:25');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('169','invoice_from','','Company Name','0','memberships','','2','2023-09-08 13:25:09');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('170','company_address','textarea','Company Address,
973 Cordie Fort,
South Carolina,
East Darrick,
24212-8873','0','memberships','','2','2023-09-17 19:41:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('171','invoice_footer','','Thank you for your business!','0','memberships','','2','2023-09-08 13:25:09');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('172','default_currency','select','USD','0','memberships','','2','2024-01-20 22:40:47');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('173','default_currency_symbol','','$','0','memberships','','2','2023-09-18 13:59:23');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('174','site_terms_conditions','select','2','0','login_settings','','3','2023-09-21 00:09:09');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('175','link_filter','["enable","disable","strict_mode"]','disable','0','other_settings','','0','2024-05-15 00:21:06');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('176','disable_right_click','["yes","no"]','no','0','general_settings','','18','2023-09-21 20:07:02');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('177','live_kit_url','','','0','video_audio_chat','{"class":"field video_chat_fields live_kit d-none"}','5','2024-05-15 00:27:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('178','live_kit_api_key','','','0','video_audio_chat','{"class":"field video_chat_fields live_kit d-none"}','5','2024-05-15 00:27:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('179','live_kit_secret_key','','','0','video_audio_chat','{"class":"field video_chat_fields live_kit d-none"}','5','2024-05-15 00:27:16');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('180','fb_apikey','','','0','notification_settings','{"class":"field web_push_fields firebase d-none"}','2','2024-02-02 01:57:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('181','fb_authdomain','','','0','notification_settings','{"class":"field web_push_fields firebase d-none"}','2','2024-02-02 01:57:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('182','fb_projectid','','','0','notification_settings','{"class":"field web_push_fields firebase d-none"}','2','2024-02-02 01:57:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('183','fb_messagingsenderid','','','0','notification_settings','{"class":"field web_push_fields firebase d-none"}','2','2024-02-02 01:57:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('184','fb_appid','','','0','notification_settings','{"class":"field web_push_fields firebase d-none"}','2','2024-02-02 01:57:29');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('185','firebase_private_key','','firebase_pk_KLxubkqFfC.json','0','notification_settings','{"class":"field filebrowse web_push_fields firebase d-none"}','2','2023-11-05 00:10:03');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('186','audio_chat','["enable","disable"]','enable','0','video_audio_chat','{"class":"field video_chat_fields live_kit agora d-none"}','1','2024-04-20 12:00:18');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('187','send_welcome_email','["enable","disable"]','disable','0','login_settings','','2','2022-01-21 01:37:18');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('188','google_cloud_vision_api_key','','','0','moderation_settings','{"class":"field image_mod_fields google_cloud_vision d-none"}','14','2024-01-31 02:00:21');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('189','gcv_image_removal_criteria','[multi_select]["adult_content","spoof_content","medical_content","violence_content","racy_content"]','a:5:{i:0;s:13:"adult_content";i:1;s:13:"spoof_content";i:2;s:15:"medical_content";i:3;s:16:"violence_content";i:4;s:12:"racy_content";}','0','moderation_settings','{"class":"field image_mod_fields google_cloud_vision d-none"}','15','2024-05-15 00:27:43');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('190','text_moderation','["disable","perspective_api"]','disable','0','moderation_settings','{"class":"field toggle_form_fields","hide_field":"text_mod_fields","show_fields":"perspective_api|perspective_api"}','1','2024-04-23 16:20:45');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('191','perspective_google_cloud_api_key','','','0','moderation_settings','{"class":"field text_mod_fields perspective_api d-none"}','2','2024-04-23 16:20:45');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('192','perspective_api_threshold','float','0.85','0','moderation_settings','{"class":"field text_mod_fields perspective_api d-none"}','3','2024-01-31 13:54:55');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('193','perspectiveapi_text_removal_criteria','[multi_select]["toxicity","severe_toxicity","profanity","threat","identity_attack","insult"]','a:6:{i:0;s:8:"toxicity";i:1;s:15:"severe_toxicity";i:2;s:9:"profanity";i:3;s:6:"threat";i:4;s:15:"identity_attack";i:5;s:6:"insult";}','0','moderation_settings','{"class":"field text_mod_fields perspective_api d-none"}','4','2024-05-15 00:27:43');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('194','show_group_members_count','["enable","disable"]','disable','0','other_settings','','0','2024-01-31 20:52:10');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('195','screen_sharing','["enable","disable"]','enable','0','video_audio_chat','{"class":"field video_chat_fields live_kit agora d-none"}','1','2024-04-23 21:46:01');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('196','categorize_groups','["yes","no"]','no','0','general_settings','','5','2024-05-30 11:06:01');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('197','no_of_groups_landing_page','number','40','1','other_settings','','7','2024-05-02 00:12:58');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('198','packages_section_status','["enable","disable"]','enable','0','other_settings','','0','2024-05-04 14:54:15');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('199','require_billing_address','["yes","no"]','no','0','memberships','','1','2024-05-07 14:06:19');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('200','under_maintenance_mode','["enable","disable"]','disable','0','general_settings','','6','2024-05-06 13:11:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('201','maintenance_mode_access_code','0','keoxsYb7','0','general_settings','','7','2024-05-06 13:11:20');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('202','normalize_text_message','["yes","no"]','yes','0','message_settings','','4','2024-05-30 10:23:04');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('203','video_search_engine','["disable","youtube"]','disable','0','message_settings','','9','2024-05-15 00:26:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('204','video_search_engine_api','0','','0','message_settings','','10','2024-05-15 00:26:27');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('205','videos_per_load','number','25','0','message_settings','','11','2021-07-22 15:56:00');
INSERT INTO gr_settings (`setting_id`,`setting`,`options`,`value`,`required`,`category`,`field_attributes`,`settings_order`,`updated_on`) VALUES ('206','message_text_formatting','["enable","disable"]','enable','0','message_settings','','4','2024-05-13 01:08:43');



CREATE TABLE `gr_site_advertisements` (
  `site_advert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_advert_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_advert_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_advert_placement` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_advert_min_height` int(11) DEFAULT NULL,
  `site_advert_max_height` int(11) NOT NULL DEFAULT '150',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`site_advert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_site_advertisements` (
  `site_advert_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `site_advert_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_advert_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_advert_placement` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_advert_min_height` int(11) DEFAULT NULL,
  `site_advert_max_height` int(11) NOT NULL DEFAULT '150',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`site_advert_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_site_notifications` (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_group_id` bigint(20) DEFAULT NULL,
  `related_user_id` bigint(20) DEFAULT NULL,
  `related_message_id` bigint(20) DEFAULT NULL,
  `related_parameters` text COLLATE utf8mb4_unicode_ci,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Unread\r\n1 = Read',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `idx__user_id_read_status` (`user_id`,`read_status`),
  CONSTRAINT `user_id_fk_15` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_site_notifications ADD INDEX idx__user_id_read_status (user_id);
ALTER TABLE gr_site_notifications ADD INDEX idx__user_id_read_status (read_status);

CREATE TABLE `gr_site_notifications` (
  `notification_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `notification_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_group_id` bigint(20) DEFAULT NULL,
  `related_user_id` bigint(20) DEFAULT NULL,
  `related_message_id` bigint(20) DEFAULT NULL,
  `related_parameters` text COLLATE utf8mb4_unicode_ci,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Unread\r\n1 = Read',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `idx__user_id_read_status` (`user_id`,`read_status`),
  CONSTRAINT `user_id_fk_15` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_site_roles` (
  `site_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_role_attribute` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_hierarchy` int(11) NOT NULL DEFAULT '1',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`site_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_site_roles` (
  `site_role_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `string_constant` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_role_attribute` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_hierarchy` int(11) NOT NULL DEFAULT '1',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`site_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_site_roles (`site_role_id`,`string_constant`,`permissions`,`site_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('1','site_role_1','{"update":"site_roles","name_color":"#DD8400","role_hierarchy":"1","disabled":"no","load_profile_on_page_load":"","left_panel_content_on_page_load":"","main_panel_content_on_page_load":"","hide_groups_on_group_url":"no","skip_text_moderation":"no","skip_image_moderation":"no","default_group_visibility":"","group_create_limit":"500","default_group_category":"","pm_only_specific_roles":"no","group_join_limit":"100","flood_control_time_difference":"20","daily_send_limit_group_messages":"0","daily_send_limit_private_messages":"0","edit_message_time_limit":"10","delete_message_time_limit":"10","max_file_upload_size":"500","maximum_storage_space":"500"}','unverified_users','1','0','2024-05-15 00:31:21');
INSERT INTO gr_site_roles (`site_role_id`,`string_constant`,`permissions`,`site_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('2','site_role_2','{"update":"site_roles","name_color":"#F06292","role_hierarchy":"5","disabled":"no","load_profile_on_page_load":"yes","left_panel_content_on_page_load":"group_categories","main_panel_content_on_page_load":"statistics","site_notifications":["view","delete"],"hide_groups_on_group_url":"no","skip_text_moderation":"no","skip_image_moderation":"no","groups":["view_public_groups","view_secret_groups","view_password_protected_groups","view_joined_groups","create_groups","create_unleavable_group","create_secret_group","create_protected_group","create_video_chat_groups","create_audio_chat_groups","video_chat","audio_chat","set_group_slug","set_group_category","pin_groups","set_auto_join_groups","set_participant_settings","set_default_group_role_within_group","add_meta_tags","set_cover_pic","set_custom_background","download_attachments","typing_indicator","mention_users","mention_everyone","reply_messages","forward_messages","check_read_receipts","join_group","leave_group","invite_users","add_site_members","view_reactions","react_messages","send_message","send_audio_message","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","clear_chat_history","export_chat","embed_group","send_as_another_user","super_privileges"],"default_group_visibility":"visible","group_create_limit":"10000","default_group_category":"","friend_system":["view_friends","send_requests","receive_requests"],"private_conversations":["super_privileges","initiate_private_chat","view_private_chats","video_chat","audio_chat","send_message","message_non_friends","send_audio_message","view_reactions","react_messages","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","typing_indicator","reply_messages","check_read_receipts","edit_own_message","delete_own_message","download_attachments","export_chat","clear_chat_history"],"pm_only_specific_roles":"no","pm_restricted_roles":["1","2","3","5"],"group_join_limit":"99999999","flood_control_time_difference":"2","daily_send_limit_group_messages":"0","daily_send_limit_private_messages":"0","edit_message_time_limit":"10","delete_message_time_limit":"99999999999999","storage":["access_storage","upload_files","download_files","delete_files","super_privileges"],"max_file_upload_size":"5000","maximum_storage_space":"5000","allowed_file_formats":["image_files","video_files","audio_files","documents","all_file_formats"],"site_users":["block_users","ignore_users","create_user","import_users","generate_fake_users","set_fake_online_users","edit_users","delete_users","approve_users","ban_users_from_site","unban_users_from_site","view_site_users","view_online_users","view_nearby_users","view_invisible_users","ban_ip_addresses","unban_ip_addresses","manage_user_access_logs","login_as_another_user","advanced_user_searches"],"profile":["edit_profile","change_full_name","change_username","change_email_address","change_password","change_avatar","set_timezone","upload_custom_avatar","set_cover_pic","set_custom_background","go_offline","view_email_address","view_phone_number","view_profile_url","switch_languages","switch_color_scheme","disable_private_messages","deactivate_account","delete_account"],"site_roles":["create","view","edit","delete"],"memberships":["view_membership_info","enroll_membership","view_personal_transactions","download_invoice","view_site_transactions","edit_site_transactions"],"bank_transfer_receipts":["view","validate","delete"],"membership_packages":["create","view","edit","delete"],"group_roles":["create","view","edit","delete"],"custom_fields":["create","view","edit","delete"],"stickers":["create","view","edit","delete"],"custom_pages":["create","view","edit","delete"],"custom_menu":["create","view","edit","delete"],"avatars":["upload","view","delete"],"languages":["create","view","edit","delete","export"],"social_login_providers":["add","view","edit","delete"],"audio_player":["listen_music","add","view","edit","delete"],"site_adverts":["create","view","edit","delete"],"badges":["assign","create","view","edit","delete"],"complaints":["report","track_status","review_complaints","delete_complaints"],"super_privileges":["monitor_group_chats","monitor_private_chats","view_statistics","core_settings","manage_group_categories","manage_payment_gateways","customizer","slideshows","group_headers","header_footer","firewall","email_validator","link_filter","profanity_filter","message_scheduler","cron_jobs"]}','administrators','5','0','2024-05-15 00:32:44');
INSERT INTO gr_site_roles (`site_role_id`,`string_constant`,`permissions`,`site_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('3','site_role_3','{"update":"site_roles","name_color":"#00B107","role_hierarchy":"4","disabled":"no","load_profile_on_page_load":"yes","left_panel_content_on_page_load":"","main_panel_content_on_page_load":"welcome_screen","site_notifications":["view","delete"],"hide_groups_on_group_url":"yes","skip_text_moderation":"no","skip_image_moderation":"no","groups":["view_joined_groups","video_chat","audio_chat","download_attachments","typing_indicator","mention_users","reply_messages","forward_messages","check_read_receipts","join_group","leave_group","invite_users","view_reactions","react_messages","send_message","send_audio_message","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","clear_chat_history","export_chat","embed_group"],"default_group_visibility":"hidden","group_create_limit":"10","default_group_category":"","friend_system":["view_friends","send_requests","receive_requests"],"private_conversations":["initiate_private_chat","view_private_chats","video_chat","audio_chat","send_message","send_audio_message","view_reactions","react_messages","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","typing_indicator","reply_messages","check_read_receipts","edit_own_message","delete_own_message","download_attachments","export_chat","clear_chat_history"],"pm_only_specific_roles":"no","group_join_limit":"100","flood_control_time_difference":"0","daily_send_limit_group_messages":"0","daily_send_limit_private_messages":"0","edit_message_time_limit":"10","delete_message_time_limit":"10","storage":["access_storage","upload_files","download_files","delete_files"],"max_file_upload_size":"500","maximum_storage_space":"1000","allowed_file_formats":["image_files","video_files","audio_files","documents"],"site_users":["block_users","ignore_users","edit_users","view_online_users","view_nearby_users","advanced_user_searches"],"profile":["edit_profile","change_full_name","change_username","change_email_address","change_password","change_avatar","set_timezone","upload_custom_avatar","set_cover_pic","set_custom_background","go_offline","view_profile_url","switch_languages","switch_color_scheme","disable_private_messages","deactivate_account"],"memberships":["view_membership_info","enroll_membership","view_personal_transactions","download_invoice"],"audio_player":["listen_music"],"complaints":["report","track_status"]}','default_site_role','4','0','2024-05-31 00:12:56');
INSERT INTO gr_site_roles (`site_role_id`,`string_constant`,`permissions`,`site_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('4','site_role_4','{"update":"site_roles","name_color":"#FF1100","role_hierarchy":"1","disabled":"no","load_profile_on_page_load":"","left_panel_content_on_page_load":"","main_panel_content_on_page_load":"","hide_groups_on_group_url":"","skip_text_moderation":"","skip_image_moderation":"","default_group_visibility":"","group_create_limit":"500","default_group_category":"","pm_only_specific_roles":"","group_join_limit":"100","flood_control_time_difference":"20","daily_send_limit_group_messages":"0","daily_send_limit_private_messages":"0","edit_message_time_limit":"10","delete_message_time_limit":"10","max_file_upload_size":"500","maximum_storage_space":"500"}','banned_users','1','0','2024-05-15 00:35:38');
INSERT INTO gr_site_roles (`site_role_id`,`string_constant`,`permissions`,`site_role_attribute`,`role_hierarchy`,`disabled`,`updated_on`) VALUES ('5','site_role_5','{"update":"site_roles","name_color":"#5D01FF","role_hierarchy":"3","disabled":"no","load_profile_on_page_load":"yes","left_panel_content_on_page_load":"group_categories","main_panel_content_on_page_load":"welcome_screen","site_notifications":["view"],"hide_groups_on_group_url":"no","skip_text_moderation":"no","skip_image_moderation":"no","groups":["view_public_groups","view_password_protected_groups","view_joined_groups","video_chat","audio_chat","download_attachments","typing_indicator","mention_users","reply_messages","forward_messages","check_read_receipts","join_group","leave_group","invite_users","view_reactions","react_messages","send_message","send_audio_message","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","clear_chat_history","export_chat","embed_group"],"default_group_visibility":"hidden","group_create_limit":"500","default_group_category":"","private_conversations":["initiate_private_chat","view_private_chats","video_chat","audio_chat","send_message","message_non_friends","send_audio_message","view_reactions","react_messages","attach_files","attach_from_storage","attach_gifs","search_share_videos","attach_stickers","share_screenshot","preview_pdf_files","share_location","allow_sharing_links","allow_sharing_email_addresses","generate_link_preview","typing_indicator","reply_messages","check_read_receipts","delete_own_message","download_attachments","export_chat","clear_chat_history"],"pm_only_specific_roles":"","group_join_limit":"10","flood_control_time_difference":"4","daily_send_limit_group_messages":"0","daily_send_limit_private_messages":"0","edit_message_time_limit":"10","delete_message_time_limit":"10","storage":["access_storage","upload_files","download_files"],"max_file_upload_size":"100","maximum_storage_space":"500","allowed_file_formats":["image_files","video_files","audio_files","documents"],"site_users":["block_users","ignore_users","view_online_users","view_nearby_users"],"profile":["edit_profile","change_full_name","change_avatar","set_timezone","upload_custom_avatar","set_cover_pic","switch_languages","switch_color_scheme"],"audio_player":["listen_music"],"complaints":["report","track_status"]}','guest_users','3','0','2024-05-15 00:37:24');



CREATE TABLE `gr_site_users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unverified_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` int(11) NOT NULL DEFAULT '1',
  `verification_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `one_time_pin` int(11) DEFAULT NULL,
  `otp_generated_on` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encrypt_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'php_password_hash' COMMENT 'md5,php_password_hash OR encrypt_method_id',
  `salt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_role_id` bigint(20) NOT NULL DEFAULT '1',
  `previous_site_role_id` bigint(20) NOT NULL DEFAULT '3',
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_cover_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Offline\r\n1 = Online\r\n2 = Idle',
  `stay_online` int(11) NOT NULL DEFAULT '0',
  `approved` int(11) NOT NULL DEFAULT '1',
  `geo_latitude` decimal(10,8) DEFAULT NULL,
  `geo_longitude` decimal(11,8) DEFAULT NULL,
  `total_friends` bigint(20) DEFAULT '0',
  `social_login_provider_id` bigint(20) DEFAULT NULL,
  `access_token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_generated_on` datetime DEFAULT '1970-01-02 00:00:00',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `last_seen_on` datetime DEFAULT NULL,
  `last_login_session` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `email` (`email_address`),
  KEY `site_role_id_fk` (`site_role_id`),
  KEY `idx__online_status` (`online_status`),
  KEY `idx__last_login_session` (`last_login_session`),
  KEY `idx__updated_on` (`updated_on`),
  CONSTRAINT `site_role_id_fk` FOREIGN KEY (`site_role_id`) REFERENCES `gr_site_roles` (`site_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_site_users ADD INDEX name (username);
ALTER TABLE gr_site_users ADD INDEX email (email_address);
ALTER TABLE gr_site_users ADD INDEX site_role_id_fk (site_role_id);
ALTER TABLE gr_site_users ADD INDEX idx__online_status (online_status);
ALTER TABLE gr_site_users ADD INDEX idx__last_login_session (last_login_session);
ALTER TABLE gr_site_users ADD INDEX idx__updated_on (updated_on);

CREATE TABLE `gr_site_users` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `display_name` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unknown',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unverified_email_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_verified` int(11) NOT NULL DEFAULT '1',
  `verification_code` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `one_time_pin` int(11) DEFAULT NULL,
  `otp_generated_on` datetime DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encrypt_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'php_password_hash' COMMENT 'md5,php_password_hash OR encrypt_method_id',
  `salt` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_role_id` bigint(20) NOT NULL DEFAULT '1',
  `previous_site_role_id` bigint(20) NOT NULL DEFAULT '3',
  `profile_picture` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_bg_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_cover_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `online_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Offline\r\n1 = Online\r\n2 = Idle',
  `stay_online` int(11) NOT NULL DEFAULT '0',
  `approved` int(11) NOT NULL DEFAULT '1',
  `geo_latitude` decimal(10,8) DEFAULT NULL,
  `geo_longitude` decimal(11,8) DEFAULT NULL,
  `total_friends` bigint(20) DEFAULT '0',
  `social_login_provider_id` bigint(20) DEFAULT NULL,
  `access_token` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_generated_on` datetime DEFAULT '1970-01-02 00:00:00',
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  `last_seen_on` datetime DEFAULT NULL,
  `last_login_session` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `name` (`username`),
  UNIQUE KEY `email` (`email_address`),
  KEY `site_role_id_fk` (`site_role_id`),
  KEY `idx__online_status` (`online_status`),
  KEY `idx__last_login_session` (`last_login_session`),
  KEY `idx__updated_on` (`updated_on`),
  CONSTRAINT `site_role_id_fk` FOREIGN KEY (`site_role_id`) REFERENCES `gr_site_roles` (`site_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_site_users (`user_id`,`display_name`,`username`,`email_address`,`unverified_email_address`,`phone_number`,`phone_verified`,`verification_code`,`one_time_pin`,`otp_generated_on`,`password`,`encrypt_type`,`salt`,`site_role_id`,`previous_site_role_id`,`profile_picture`,`profile_bg_image`,`profile_cover_pic`,`online_status`,`stay_online`,`approved`,`geo_latitude`,`geo_longitude`,`total_friends`,`social_login_provider_id`,`access_token`,`token_generated_on`,`created_on`,`updated_on`,`last_seen_on`,`last_login_session`) VALUES ('1','fullName','NickName','k400w.km@gmail.com','','','1','','','','$2y$10$qXTTOZDezYl7zZOzcXfYM.PapgvoUZdliGbmCH2KdMge5llI2CQrq','php_password_hash','','2','2','assets/files/site_users/profile_pics/052024/1-gr-cqS2ox.jfif','','assets/files/site_users/cover_pics/default.png','0','0','1','9.93123280','76.26730410','0','','bzf0vuh3IC','2023-03-31 11:25:12','2024-05-23 01:06:09','2024-05-31 00:06:03','2024-05-31 00:30:42','2024-05-30 10:19:24');
INSERT INTO gr_site_users (`user_id`,`display_name`,`username`,`email_address`,`unverified_email_address`,`phone_number`,`phone_verified`,`verification_code`,`one_time_pin`,`otp_generated_on`,`password`,`encrypt_type`,`salt`,`site_role_id`,`previous_site_role_id`,`profile_picture`,`profile_bg_image`,`profile_cover_pic`,`online_status`,`stay_online`,`approved`,`geo_latitude`,`geo_longitude`,`total_friends`,`social_login_provider_id`,`access_token`,`token_generated_on`,`created_on`,`updated_on`,`last_seen_on`,`last_login_session`) VALUES ('2','asdsaad','asdsaad','user_1716408166@P7QJW.guestuser','','','1','QGBLotWHsV','','','$2y$10$AYI3IRRHYOEO3WsxkaUVeOD/AFTfajxy90Fh.p57H7uZJRPUwsDjW','php_password_hash','','5','5','assets/files/site_users/profile_pics/default.png','','assets/files/site_users/cover_pics/default.png','0','0','1','','','0','','','1970-01-02 00:00:00','2024-05-23 01:32:46','2024-05-30 10:19:13','2024-05-30 10:19:13','2024-05-23 01:32:46');
INSERT INTO gr_site_users (`user_id`,`display_name`,`username`,`email_address`,`unverified_email_address`,`phone_number`,`phone_verified`,`verification_code`,`one_time_pin`,`otp_generated_on`,`password`,`encrypt_type`,`salt`,`site_role_id`,`previous_site_role_id`,`profile_picture`,`profile_bg_image`,`profile_cover_pic`,`online_status`,`stay_online`,`approved`,`geo_latitude`,`geo_longitude`,`total_friends`,`social_login_provider_id`,`access_token`,`token_generated_on`,`created_on`,`updated_on`,`last_seen_on`,`last_login_session`) VALUES ('3','k400w','k400w','user_1716408264@FfN6g.guestuser','','','1','Qv7XctiUkH','','','$2y$10$/hSLLoaTJozT616KPIqf6ejdijqUkTw3oIeXdogy3vXt2idvN9cOK','php_password_hash','','5','5','assets/files/site_users/profile_pics/default.png','','assets/files/site_users/cover_pics/default.png','0','0','1','','','0','','','1970-01-02 00:00:00','2024-05-23 01:34:24','2024-05-30 18:42:34','2024-05-31 00:17:50','2024-05-23 01:34:24');
INSERT INTO gr_site_users (`user_id`,`display_name`,`username`,`email_address`,`unverified_email_address`,`phone_number`,`phone_verified`,`verification_code`,`one_time_pin`,`otp_generated_on`,`password`,`encrypt_type`,`salt`,`site_role_id`,`previous_site_role_id`,`profile_picture`,`profile_bg_image`,`profile_cover_pic`,`online_status`,`stay_online`,`approved`,`geo_latitude`,`geo_longitude`,`total_friends`,`social_login_provider_id`,`access_token`,`token_generated_on`,`created_on`,`updated_on`,`last_seen_on`,`last_login_session`) VALUES ('4','testtest','testtesttest','test@gmail.com','','+380994270042','1','Lzi485MHAs','869178','2024-05-30 11:02:38','$2y$10$UtJgtCFDqU3PXJ2d/pY3SeZkL.NkuaqBaAKxzSfCuig7Q9VGD0MZ6','php_password_hash','','3','3','','','','0','0','1','','','0','','','1970-01-02 00:00:00','2024-05-30 11:02:38','2024-05-30 16:10:55','2024-05-30 22:25:00','2024-05-30 11:02:38');



CREATE TABLE `gr_site_users_blacklist` (
  `user_blacklist_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `blacklisted_user_id` bigint(20) NOT NULL,
  `ignore` int(11) DEFAULT '0' COMMENT '0 = False\r\n1 = True',
  `block` int(11) NOT NULL DEFAULT '0' COMMENT '0 = False\r\n1 = True',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`user_blacklist_id`),
  KEY `idx__blacklisted_user_id_user_id` (`blacklisted_user_id`,`user_id`),
  KEY `idx__user_id_blacklisted_user_id` (`user_id`,`blacklisted_user_id`),
  KEY `idx__user_id_ignore` (`user_id`,`ignore`),
  KEY `idx__user_id_block` (`user_id`,`block`),
  CONSTRAINT `user_id_fk_16` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_17` FOREIGN KEY (`blacklisted_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_site_users_blacklist ADD INDEX idx__blacklisted_user_id_user_id (blacklisted_user_id);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__blacklisted_user_id_user_id (user_id);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__user_id_blacklisted_user_id (user_id);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__user_id_blacklisted_user_id (blacklisted_user_id);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__user_id_ignore (user_id);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__user_id_ignore (ignore);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__user_id_block (user_id);
ALTER TABLE gr_site_users_blacklist ADD INDEX idx__user_id_block (block);

CREATE TABLE `gr_site_users_blacklist` (
  `user_blacklist_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `blacklisted_user_id` bigint(20) NOT NULL,
  `ignore` int(11) DEFAULT '0' COMMENT '0 = False\r\n1 = True',
  `block` int(11) NOT NULL DEFAULT '0' COMMENT '0 = False\r\n1 = True',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`user_blacklist_id`),
  KEY `idx__blacklisted_user_id_user_id` (`blacklisted_user_id`,`user_id`),
  KEY `idx__user_id_blacklisted_user_id` (`user_id`,`blacklisted_user_id`),
  KEY `idx__user_id_ignore` (`user_id`,`ignore`),
  KEY `idx__user_id_block` (`user_id`,`block`),
  CONSTRAINT `user_id_fk_16` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_17` FOREIGN KEY (`blacklisted_user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_site_users_device_logs` (
  `access_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_session_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`access_log_id`),
  KEY `user_id_fk_18` (`user_id`),
  CONSTRAINT `user_id_fk_18` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_site_users_device_logs ADD INDEX user_id_fk_18 (user_id);

CREATE TABLE `gr_site_users_device_logs` (
  `access_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `login_session_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_on` datetime NOT NULL,
  PRIMARY KEY (`access_log_id`),
  KEY `user_id_fk_18` (`user_id`),
  CONSTRAINT `user_id_fk_18` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('1','1','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-23 01:06:40');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('2','2','2','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-23 01:32:46');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('3','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-23 01:34:24');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('4','2','2','127.0.0.1','a:4:{s:8:"platform";s:7:"Android";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:131:"Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Mobile Safari/537.36";}','2024-05-23 02:33:20');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('5','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 05:48:12');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('6','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-29 05:48:52');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('7','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 06:48:28');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('8','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 07:49:02');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('9','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 08:49:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('10','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 09:50:14');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('11','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 10:50:50');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('12','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 11:51:26');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('13','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 12:52:02');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('14','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 13:52:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('15','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 14:53:14');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('16','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 15:53:50');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('17','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 16:54:26');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('18','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 17:55:02');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('19','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 18:55:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('20','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 19:56:14');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('21','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 20:56:50');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('22','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 21:57:26');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('23','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 22:57:58');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('24','4','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-29 23:58:27');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('25','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 07:02:20');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('26','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 10:16:58');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('27','2','2','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 10:18:39');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('28','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 10:19:24');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('29','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 11:02:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('30','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 11:17:09');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('31','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 11:19:48');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('32','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 12:02:52');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('33','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 12:17:24');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('34','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 12:20:24');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('35','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 13:03:08');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('36','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 13:17:42');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('37','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 14:03:26');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('38','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 14:17:54');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('39','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 14:18:15');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('40','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 14:40:59');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('41','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 15:03:45');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('42','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 15:18:13');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('43','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 15:18:42');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('44','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 15:46:08');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('45','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 16:04:00');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('46','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 16:18:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('47','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 16:19:08');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('48','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 16:46:32');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('49','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 17:04:35');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('50','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 17:19:14');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('51','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 17:19:23');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('52','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 17:46:56');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('53','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 18:05:11');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('54','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 18:19:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('55','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 18:19:50');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('56','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 18:47:10');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('57','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 19:05:38');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('58','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 19:19:56');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('59','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 19:20:18');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('60','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 19:47:32');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('61','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 20:06:05');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('62','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 20:20:24');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('63','7','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:9:"125.0.0.0";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/125.0.0.0 Safari/537.36";}','2024-05-30 20:20:37');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('64','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 21:06:28');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('65','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 21:20:43');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('66','8','4','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 22:06:54');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('67','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 22:21:04');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('68','3','3','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:13:"124.0.6367.60";s:7:"browser";s:6:"Chrome";s:10:"user_agent";s:144:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) ChatSS/1.0.0 Chrome/124.0.6367.60 Electron/30.0.1 Safari/537.36";}','2024-05-30 23:49:22');
INSERT INTO gr_site_users_device_logs (`access_log_id`,`login_session_id`,`user_id`,`ip_address`,`user_agent`,`created_on`) VALUES ('69','6','1','127.0.0.1','a:4:{s:8:"platform";s:10:"Windows 10";s:7:"version";s:1:"?";s:7:"browser";s:5:"Opera";s:10:"user_agent";s:125:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/123.0.0.0 Safari/537.36 OPR/109.0.0.0";}','2024-05-30 23:49:49');



CREATE TABLE `gr_site_users_membership` (
  `membership_info_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `membership_package_id` bigint(20) DEFAULT NULL,
  `started_on` datetime NOT NULL,
  `expiring_on` datetime NOT NULL,
  `non_expiring` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`membership_info_id`),
  KEY `user_id_fk_24` (`user_id`),
  KEY `membership_package_id_fk_1` (`membership_package_id`),
  CONSTRAINT `membership_package_id_fk_1` FOREIGN KEY (`membership_package_id`) REFERENCES `gr_membership_packages` (`membership_package_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_24` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_site_users_membership ADD INDEX user_id_fk_24 (user_id);
ALTER TABLE gr_site_users_membership ADD INDEX membership_package_id_fk_1 (membership_package_id);

CREATE TABLE `gr_site_users_membership` (
  `membership_info_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `membership_package_id` bigint(20) DEFAULT NULL,
  `started_on` datetime NOT NULL,
  `expiring_on` datetime NOT NULL,
  `non_expiring` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`membership_info_id`),
  KEY `user_id_fk_24` (`user_id`),
  KEY `membership_package_id_fk_1` (`membership_package_id`),
  CONSTRAINT `membership_package_id_fk_1` FOREIGN KEY (`membership_package_id`) REFERENCES `gr_membership_packages` (`membership_package_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_24` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_site_users_settings` (
  `user_setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `offline_mode` int(11) NOT NULL DEFAULT '0',
  `time_zone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Australia/Sydney',
  `language_id` bigint(20) DEFAULT NULL,
  `notification_tone` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `disable_private_messages` int(11) NOT NULL DEFAULT '0',
  `deactivated` int(11) DEFAULT '0',
  `color_scheme` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_setting_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_id_fk_4` (`user_id`),
  KEY `language_id_fk_2` (`language_id`),
  CONSTRAINT `language_id_fk_2` FOREIGN KEY (`language_id`) REFERENCES `gr_languages` (`language_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_4` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_site_users_settings ADD INDEX user_id (user_id);
ALTER TABLE gr_site_users_settings ADD INDEX user_id_fk_4 (user_id);
ALTER TABLE gr_site_users_settings ADD INDEX language_id_fk_2 (language_id);

CREATE TABLE `gr_site_users_settings` (
  `user_setting_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `offline_mode` int(11) NOT NULL DEFAULT '0',
  `time_zone` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT 'Australia/Sydney',
  `language_id` bigint(20) DEFAULT NULL,
  `notification_tone` varchar(199) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `disable_private_messages` int(11) NOT NULL DEFAULT '0',
  `deactivated` int(11) DEFAULT '0',
  `color_scheme` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT 'default',
  `updated_on` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_setting_id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `user_id_fk_4` (`user_id`),
  KEY `language_id_fk_2` (`language_id`),
  CONSTRAINT `language_id_fk_2` FOREIGN KEY (`language_id`) REFERENCES `gr_languages` (`language_id`) ON DELETE SET NULL,
  CONSTRAINT `user_id_fk_4` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_site_users_settings (`user_setting_id`,`user_id`,`offline_mode`,`time_zone`,`language_id`,`notification_tone`,`disable_private_messages`,`deactivated`,`color_scheme`,`updated_on`) VALUES ('21','1','0','default','2','assets/files/sound_notifications/hollow.mp3','0','0','default','2024-05-31 00:06:03');
INSERT INTO gr_site_users_settings (`user_setting_id`,`user_id`,`offline_mode`,`time_zone`,`language_id`,`notification_tone`,`disable_private_messages`,`deactivated`,`color_scheme`,`updated_on`) VALUES ('22','2','0','default','1','0','0','0','default','2024-05-30 10:18:51');
INSERT INTO gr_site_users_settings (`user_setting_id`,`user_id`,`offline_mode`,`time_zone`,`language_id`,`notification_tone`,`disable_private_messages`,`deactivated`,`color_scheme`,`updated_on`) VALUES ('23','3','0','default','','0','0','0','default','2024-05-23 01:34:24');
INSERT INTO gr_site_users_settings (`user_setting_id`,`user_id`,`offline_mode`,`time_zone`,`language_id`,`notification_tone`,`disable_private_messages`,`deactivated`,`color_scheme`,`updated_on`) VALUES ('24','4','0','default','','0','0','0','default','2024-05-30 11:02:38');



CREATE TABLE `gr_social_login_providers` (
  `social_login_provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_key` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_popup` int(11) NOT NULL DEFAULT '1',
  `create_user` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Don''t Create\r\n1 = Create',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`social_login_provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `gr_social_login_providers` (
  `social_login_provider_id` int(11) NOT NULL AUTO_INCREMENT,
  `identity_provider` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_id` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_key` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secret_key` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `open_in_popup` int(11) NOT NULL DEFAULT '1',
  `create_user` int(11) NOT NULL DEFAULT '0' COMMENT '0 = Don''t Create\r\n1 = Create',
  `disabled` int(11) NOT NULL DEFAULT '0',
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`social_login_provider_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;




CREATE TABLE `gr_typing_status` (
  `user_input_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `private_conversation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`user_input_log_id`),
  KEY `user_id_fk_19` (`user_id`),
  KEY `private_conversation_id_fk_2` (`private_conversation_id`),
  KEY `group_id_fk_7` (`group_id`),
  KEY `idx__group_id_user_id` (`group_id`,`user_id`),
  KEY `idx__group_id_updated_on` (`group_id`,`updated_on`),
  KEY `idx__private_conversation_id_user_id` (`private_conversation_id`,`user_id`),
  KEY `idx__private_conversation_id_updated_on` (`private_conversation_id`,`updated_on`),
  CONSTRAINT `group_id_fk_7` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `private_conversation_id_fk_2` FOREIGN KEY (`private_conversation_id`) REFERENCES `gr_private_conversations` (`private_conversation_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_19` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ciALTER TABLE gr_typing_status ADD INDEX user_id_fk_19 (user_id);
ALTER TABLE gr_typing_status ADD INDEX private_conversation_id_fk_2 (private_conversation_id);
ALTER TABLE gr_typing_status ADD INDEX group_id_fk_7 (group_id);
ALTER TABLE gr_typing_status ADD INDEX idx__group_id_user_id (group_id);
ALTER TABLE gr_typing_status ADD INDEX idx__group_id_user_id (user_id);
ALTER TABLE gr_typing_status ADD INDEX idx__group_id_updated_on (group_id);
ALTER TABLE gr_typing_status ADD INDEX idx__group_id_updated_on (updated_on);
ALTER TABLE gr_typing_status ADD INDEX idx__private_conversation_id_user_id (private_conversation_id);
ALTER TABLE gr_typing_status ADD INDEX idx__private_conversation_id_user_id (user_id);
ALTER TABLE gr_typing_status ADD INDEX idx__private_conversation_id_updated_on (private_conversation_id);
ALTER TABLE gr_typing_status ADD INDEX idx__private_conversation_id_updated_on (updated_on);

CREATE TABLE `gr_typing_status` (
  `user_input_log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) DEFAULT NULL,
  `private_conversation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_on` datetime NOT NULL,
  `updated_on` datetime NOT NULL,
  PRIMARY KEY (`user_input_log_id`),
  KEY `user_id_fk_19` (`user_id`),
  KEY `private_conversation_id_fk_2` (`private_conversation_id`),
  KEY `group_id_fk_7` (`group_id`),
  KEY `idx__group_id_user_id` (`group_id`,`user_id`),
  KEY `idx__group_id_updated_on` (`group_id`,`updated_on`),
  KEY `idx__private_conversation_id_user_id` (`private_conversation_id`,`user_id`),
  KEY `idx__private_conversation_id_updated_on` (`private_conversation_id`,`updated_on`),
  CONSTRAINT `group_id_fk_7` FOREIGN KEY (`group_id`) REFERENCES `gr_groups` (`group_id`) ON DELETE CASCADE,
  CONSTRAINT `private_conversation_id_fk_2` FOREIGN KEY (`private_conversation_id`) REFERENCES `gr_private_conversations` (`private_conversation_id`) ON DELETE CASCADE,
  CONSTRAINT `user_id_fk_19` FOREIGN KEY (`user_id`) REFERENCES `gr_site_users` (`user_id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
;

INSERT INTO gr_typing_status (`user_input_log_id`,`group_id`,`private_conversation_id`,`user_id`,`created_on`,`updated_on`) VALUES ('4','2','','1','2024-05-30 10:21:59','2022-01-01 00:00:00');
INSERT INTO gr_typing_status (`user_input_log_id`,`group_id`,`private_conversation_id`,`user_id`,`created_on`,`updated_on`) VALUES ('5','2','','3','2024-05-30 14:45:18','2022-01-01 00:00:00');
INSERT INTO gr_typing_status (`user_input_log_id`,`group_id`,`private_conversation_id`,`user_id`,`created_on`,`updated_on`) VALUES ('6','8','','3','2024-05-30 23:51:35','2022-01-01 00:00:00');
INSERT INTO gr_typing_status (`user_input_log_id`,`group_id`,`private_conversation_id`,`user_id`,`created_on`,`updated_on`) VALUES ('7','11','','1','2024-05-31 00:04:59','2022-01-01 00:00:00');
INSERT INTO gr_typing_status (`user_input_log_id`,`group_id`,`private_conversation_id`,`user_id`,`created_on`,`updated_on`) VALUES ('8','10','','1','2024-05-31 00:06:27','2022-01-01 00:00:00');

