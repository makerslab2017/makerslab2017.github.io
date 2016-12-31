drop database if exists makerslab_3dbot;
create database makerslab_3dbot;

use makerslab_3dbot;
create table if not exists `ci_sessions` (
        `id` varchar(40) NOT NULL,
        `ip_address` varchar(45) NOT NULL,
        `timestamp` int(10) unsigned DEFAULT 0 NOT NULL,
        `data` blob NOT NULL,
        KEY `ci_sessions_timestamp` (`timestamp`)
);

create table UserAccount (
		userid    		VARCHAR(36) 	NOT NULL,   -- to be compatible with GUID format
		passwd    		CHAR(64) 		NOT NULL,
		email			VARCHAR(40) 	NOT NULL,
		name			VARCHAR(100)	DEFAULT 'unspecified',
		creation_time	DATETIME		DEFAULT CURRENT_TIMESTAMP,
		modification_time	DATETIME	DEFAULT CURRENT_TIMESTAMP ON UPDATE	CURRENT_TIMESTAMP,
		activation_flag	BOOLEAN			DEFAULT True,
		type			VARCHAR(16)		DEFAULT 'regular',

		primary key (userid)
);

create table Stage (

);

create table Address (
		id				INT				NOT NULL AUTO_INCREMENT,
		userid			VARCHAR(36)		NOT NULL,
		address         TEXT			NOT NULL,
		zip				INT				DEFAULT 0,
		tel				CHAR(13)		DEFAULT '000-0000-0000', -- 010-1234-5678
		creation_time	DATETIME		DEFAULT CURRENT_TIMESTAMP,
		nickname		TEXT,

		primary key (id),
		foreign key (userid) references UserAccount(userid)
);


insert into UserAccount(userid, email, passwd, name, type) values ('bseo', 'beomjoo90@gmail.com', sha2('test', 224), 'Beomjoo Seo', 'administrator');
select 'show registered users' as '';
select userid, email, name from UserAccount;

insert into Printer values (NULL, 'DLP', 'XMaker.exe', True);
select 'show registered printers' as '';
select * from Printer;