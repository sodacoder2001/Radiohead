CREATE TABLE songs.songs (
ID INT,
song_name VARCHAR(100),
album_name VARCHAR(100)
);

CREATE TABLE albums.albums (
ID INT,
album_name VARCHAR(100),
release_date DATE
);

CREATE TABLE songs.song_length (
ID INT,
length TIME
);

CREATE TABLE albums.album_length (
ID INT,
length TIME
);

CREATE TABLE members.band_members (
ID INT,
artist_name VARCHAR(100),
date_of_birth DATE
);

CREATE TABLE members.member_roles (
ID INT,
member_role VARCHAR(100)
);

ALTER TABLE songs.songs
ADD PRIMARY KEY (ID);

ALTER TABLE albums.albums
ADD PRIMARY KEY (ID);

ALTER TABLE members.band_members
ADD PRIMARY KEY (ID);

ALTER TABLE songs.song_length
ADD FOREIGN KEY (ID) REFERENCES songs.songs(ID);

ALTER TABLE albums.album_length
ADD FOREIGN KEY (ID) REFERENCES albums.albums(ID);

ALTER TABLE members.member_roles
ADD FOREIGN KEY (ID) REFERENCES members.band_members(ID);

ALTER TABLE albums.albums
ADD INDEX album_name_index (album_name);

ALTER TABLE songs.songs
ADD FOREIGN KEY (album_name) REFERENCES albums.albums(album_name);

INSERT INTO songs.songs (ID, song_name, album_name)
VALUES (1, 'You', 'Pablo Honey'),
(2, 'Creep', 'Pablo Honey'),
(3, 'How Do You?', 'Pablo Honey'),
(4, 'Stop Whispering', 'Pablo Honey'),
(5, 'Thinking About You', 'Pablo Honey'),
(6, 'Anyone Can Play Guitar', 'Pablo Honey'),
(7, 'Ripcord', 'Pablo Honey'),
(8, 'Vegetable', 'Pablo Honey'),
(9, 'Prove Yourself', 'Pablo Honey'),
(10, 'I Can''t', 'Pablo Honey'),
(11, 'Lurgee', 'Pablo Honey'),
(12, 'Blow Out', 'Pablo Honey'),
(13, 'Planet Telex', 'The Bends'),
(14, 'The Bends', 'The Bends'),
(15, 'High and Dry', 'The Bends'),
(16, 'Fake Plastic Trees', 'The Bends'),
(17, 'Bones',  'The Bends'),
(18, '(Nice Dream)', 'The Bends'),
(19, 'Just', 'The Bends'),
(20, 'My Iron Lung', 'The Bends'),
(21, 'Bullet Proof... I Wish I Was', 'The Bends'),
(22, 'Black Star', 'The Bends'),
(23, 'Sulk', 'The Bends'),
(24, 'Street Spirit (Fade Out)', 'The Bends'), 
(25, 'Airbag', 'OK Computer'),
(26, 'Paranoid Android', 'OK Computer'),
(27, 'Subterranean Homesick Alien', 'OK Computer'),
(28, 'Exit Music (For a Film)', 'OK Computer'),
(29, 'Let Down', 'OK Computer'),
(30, 'Karma Police', 'OK Computer'),
(31, 'Fitter Happier', 'OK Computer'),
(32, 'Electioneering', 'OK Computer'),
(33, 'Climbing Up the Walls', 'OK Computer'),
(34, 'No Surprises', 'OK Computer'),
(35, 'Lucky', 'OK Computer'),
(36, 'The Tourist', 'OK Computer'),
(37, 'Everything in Its Right Place', 'Kid A'),
(38, 'Kid A', 'Kid A'),
(39, 'The National Anthem', 'Kid A'),
(40, 'How to Disappear Completely', 'Kid A'),
(41, 'Treefingers', 'Kid A'),
(42, 'Optimistic', 'Kid A'),
(43, 'In Limbo', 'Kid A'),
(44, 'Idioteque', 'Kid A'),
(45, 'Morning Bell', 'Kid A'),
(46, 'Motion Picture Soundtrack', 'Kid A'),
(47, 'Packt Like Sardines in a Crushd Tin Box', 'Amnesiac'),
(48, 'Pyramid Song', 'Amnesiac'),
(49, 'Pulk/Pull Revolving Doors', 'Amnesiac'),
(50, 'You and Whose Army?', 'Amnesiac'),
(51, 'I Might Be Wrong', 'Amnesiac'),
(52, 'Knives Out', 'Amnesiac'),
(53, 'Morning Bell/Amnesiac', 'Amnesiac'),
(54, 'Dollars and Cents', 'Amnesiac'),
(55, 'Hunting Bears', 'Amnesiac'),
(56, 'Like Spinning Plates', 'Amnesiac'),
(57, 'Life in a Glasshouse', 'Amnesiac'),
(58, '2 + 2 = 5', 'Hail to the Thief'),
(59, 'Sit Down Stand Up', 'Hail to the Thief'),
(60, 'Sail to the Moon', 'Hail to the Thief'),
(61, 'Backdrifts', 'Hail to the Thief'),
(62, 'Go to Sleep', 'Hail to the Thief'),
(63, 'Where I End and You Begin', 'Hail to the Thief'),
(64, 'We Suck Young Blood', 'Hail to the Thief'),
(65, 'The Gloaming', 'Hail to the Thief'),
(66, 'There There', 'Hail to the Thief'),
(67, 'I Will', 'Hail to the Thief'),
(68, 'A Punchup at a Wedding', 'Hail to the Thief'),
(69, 'Myxomatosis', 'Hail to the Thief'),
(70, 'Scatterbrain', 'Hail to the Thief'),
(71, 'A Wolf at the Door', 'Hail to the Thief'),
(72, '15 Step', 'In Rainbows'),
(73, 'Bodysnatchers', 'In Rainbows'),
(74, 'Nude', 'In Rainbows'),
(75, 'Weird Fishes/Arpeggi', 'In Rainbows'),
(76, 'All I Need', 'In Rainbows'),
(77, 'Faust Arp', 'In Rainbows'),
(78, 'Reckoner', 'In Rainbows'),
(79, 'House of Cards', 'In Rainbows'),
(80, 'Jigsaw Falling into Place', 'In Rainbows'),
(81, 'Videotape', 'In Rainbows'),
(82, 'Bloom', 'The King of Limbs'),
(83, 'Morning Mr Magpie', 'The King of Limbs'),
(84, 'Little by Little', 'The King of Limbs'),
(85, 'Feral', 'The King of Limbs'),
(86, 'Lotus Flower', 'The King of Limbs'),
(87, 'Codex', 'The King of Limbs'),
(88, 'Give Up the Ghost', 'The King of Limbs'),
(89, 'Separator', 'The King of Limbs'),
(90, 'Burn the Witch', 'A Moon Shaped Pool'),
(91, 'Daydreaming', 'A Moon Shaped Pool'),
(92, 'Decks Dark', 'A Moon Shaped Pool'),
(93, 'Desert Island Disk', 'A Moon Shaped Pool'),
(94, 'Ful Stop', 'A Moon Shaped Pool'),
(95, 'Glass Eyes', 'A Moon Shaped Pool'),
(96, 'Identikit', 'A Moon Shaped Pool'),
(97, 'The Numbers', 'A Moon Shaped Pool'),
(98, 'Present Tense', 'A Moon Shaped Pool'),
(99, 'Tinker Tailor Soldier Sailor Rich Man Poor Man Beggar Man Thief', 'A Moon Shaped Pool'),
(100, 'True Love Waits', 'A Moon Shaped Pool');

INSERT INTO albums.albums (ID, album_name, release_date)
VALUES (1, 'Pablo Honey', '1993-02-22'),
(2, 'The Bends', '1995-03-08'),
(3, 'OK Computer', '1997-05-21'),
(4, 'Kid A', '2000-10-02'),
(5, 'Amnesiac', '2001-05-30'),
(6, 'Hail to the Thief', '2003-06-09'),
(7, 'In Rainbows', '2007-10-10'),
(8, 'The King of Limbs', '2011-02-18'),
(9, 'A Moon Shaped Pool', '2016-05-08');

INSERT INTO songs.song_length (ID, length)
VALUES (1, '00:03:29'),
(2, '00:03:56'),
(3, '00:02:12'),
(4, '00:05:26'),
(5, '00:02:41'),
(6, '00:03:38'),
(7, '00:03:10'),
(8, '00:03:13'),
(9, '00:02:25'),
(10, '00:04:13'),
(11, '00:03:08'),
(12, '00:04:40'),
(13, '00:04:19'),
(14, '00:04:06'),
(15, '00:04:17'),
(16, '00:04:50'),
(17, '00:03:09'),
(18, '00:03:53'),
(19, '00:03:54'),
(20, '00:04:36'),
(21, '00:03:28'),
(22, '00:04:07'),
(23, '00:03:42'),
(24, '00:04:12'),
(25, '00:04:44'),
(26, '00:06:23'),
(27, '00:04:27'),
(28, '00:04:24'),
(29, '00:04:59'),
(30, '00:04:21'),
(31, '00:01:57'),
(32, '00:03:50'),
(33, '00:04:45'),
(34, '00:03:48'),
(35, '00:04:19'),
(36, '00:05:24'),
(37, '00:04:11'),
(38, '00:04:44'),
(39, '00:05:51'),
(40, '00:05:56'),
(41, '00:03:42'),
(42, '00:05:15'),
(43, '00:03:31'),
(44, '00:05:09'),
(45, '00:04:35'),
(46, '00:07:01'),
(47, '00:04:00'),
(48, '00:04:49'),
(49, '00:04:07'),
(50, '00:03:11'),
(51, '00:04:54'),
(52, '00:04:15'),
(53, '00:03:14'),
(54, '00:04:52'),
(55, '00:02:01'),
(56, '00:03:57'),
(57, '00:04:31'),
(58, '00:03:19'),
(59, '00:04:19'),
(60, '00:04:18'),
(61, '00:05:22'),
(62, '00:03:21'),
(63, '00:04:29'),
(64, '00:04:56'),
(65, '00:03:32'),
(66, '00:05:25'),
(67, '00:01:59'),
(68, '00:04:57'),
(69, '00:03:52'),
(70, '00:03:21'),
(71, '00:03:21'),
(72, '00:03:58'),
(73, '00:04:02'),
(74, '00:04:15'),
(75, '00:05:18'),
(76, '00:03:49'),
(77, '00:02:10'),
(78, '00:04:50'),
(79, '00:05:28'),
(80, '00:04:09'),
(81, '00:04:40'),
(82, '00:05:15'),
(83, '00:04:41'),
(84, '00:04:27'),
(85, '00:03:13'),
(86, '00:05:01'),
(87, '00:04:47'),
(88, '00:04:50'),
(89, '00:05:20'),
(90, '00:03:40'),
(91, '00:06:24'),
(92, '00:04:41'),
(93, '00:03:44'),
(94, '00:06:07'),
(95, '00:02:52'),
(96, '00:04:26'),
(97, '00:05:45'),
(98, '00:05:06'),
(99, '00:05:03'),
(100, '00:04:43');

INSERT INTO albums.album_length (ID, length)
VALUES (1, '00:42:11'),
(2, '00:48:33'),
(3, '00:53:21'),
(4, '00:49:56'),
(5, '00:43:57'),
(6, '00:56:35'),
(7, '00:42:39'),
(8, '00:37:34'),
(9, '00:52:31');

INSERT INTO members.band_members (ID, artist_name, date_of_birth)
VALUES (1, 'Thom Yorke', '1968-10-07'),
(2, 'Jonny Greenwood', '1971-11-05'),
(3, 'Colin Greenwood', '1969-06-26'),
(4, 'Ed O'' Brien', '1968-04-15'),
(5, 'Phil Selway', '1967-05-23');

INSERT INTO members.member_roles (ID, member_role)
VALUES (1, 'Vocalist, Songwriter'),
(2, 'Guitarist, Keyboardist'),
(3, 'Bassist'),
(4, 'Guitarist, Songwriter'),
(5, 'Drummer');

