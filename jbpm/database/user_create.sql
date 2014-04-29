use user;

DROP TABLE IF EXISTS `usergroup`;

CREATE TABLE `usergroup` (
  `user` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `email_list` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO usergroup (`user`, `group`, `email_list`) VALUES ('admin','admingroup','');
INSERT INTO usergroup (`user`, `group`, `email_list`) VALUES ('Administrator','','');
INSERT INTO usergroup (`user`, `group`, `email_list`) VALUES ('QTS','QTS Group','');
INSERT INTO usergroup (`user`, `group`, `email_list`) VALUES ('QA','QA Group','');
INSERT INTO usergroup (`user`, `group`, `email_list`) VALUES ('Support','Support Group','');
INSERT INTO usergroup (`user`, `group`, `email_list`) VALUES ('Content Editor','Content Editor Group','');

COMMIT;

