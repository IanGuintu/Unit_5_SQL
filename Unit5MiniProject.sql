--Create Video Table
CREATE TABLE videos (
video_id serial PRIMARY KEY,
title VARCHAR (600) NOT NULL,
length TIME,
url VARCHAR (255) NOT NULL);

---Insert Values Into Videos Table
INSERT INTO videos (title, length, url)
VALUES ('Stephen Curry vs Kevin Durant EPIC Duel Highlights (2016.02.27)', '9:08', 'https://www.youtube.com/watch?v=Jle0GZdYZS0'),
('CLIPPERS vs WARRIORS | One of a Kind HISTORIC Comeback | Game 2', '9:42', 'https://www.youtube.com/watch?v=EGqNNhAibTg'),
('Warriors vs Cavaliers: Game 7 NBA Finals - 06.19.16 Full Highlights', '12:29', 'https://www.youtube.com/watch?v=Mxv5h-RZWVs&t=649s'),
('Russell Westbrook EPIC 42nd Triple-Double vs Nuggets (2017.04.09) - 50 Pts, 16 Reb, 10 Ast, DAGGER!', '8:03', 'https://www.youtube.com/watch?v=ZBsYQRNy2Vg'),
('THUNDER vs TRAIL BLAZERS | MUST-SEE Finish That Will Leave You SPEECHLESS! | Game 5', '9:40', 'https://www.youtube.com/watch?v=bsagopMV3ps');

SELECT * FROM videos

--Create Reviewers Table
CREATE TABLE reviewers (
reviewer_id serial PRIMARY KEY,
video_id serial NOT NULL,
username VARCHAR (300) UNIQUE NOT NULL,
rating INT CHECK (rating between 0 and 10),
review VARCHAR (300) NOT NULL);

--Insert Values Into Reviewers Table
INSERT INTO reviewers (username, rating, review)
VALUES ('JDrake12', '5', 'One of the best games in probably a couple years.'),
('Ball_Player', '4', 'Perfect example of why you play hard till the end.'),
('KyrieIrv', '5', 'The best NBA finals ever.'),
('AlmightyAthlete21', '3', 'If you don''t like Westbrook, then you don''t like basketball.'),
('Kate24', '5', 'One of those all time performances you''ll never forget. Wow.');

SELECT * FROM reviewers

--Join Statement
SELECT *
FROM videos
INNER JOIN reviewers
ON videos.video_id = reviewers.video_id