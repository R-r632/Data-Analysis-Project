CREATE TABLE AWARDS(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

	
COPY AWARDS(Year_Film, Year_Ceremony, Ceremony, Category, Name, Film, Winner)
FROM 'E:\Data Analyst Projects\Oscars Awards Analysis\OscarsDatasets.csv'
DELIMITER ','
CSV HEADER;

SELECT * FROM AWARDS

SELECT * FROM AWARDS 
	WHERE Category='OUTSTANDING PICTURE' 
	OR Category='OUTSTANDING MOTION PICTURE' 
	OR Category='OUTSTANDING PICTURE' 
	OR Category='BEST MOTION PICTURE'
	OR Category='BEST PICTURE';

CREATE TABLE PICTURE(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO PICTURE
SELECT * FROM AWARDS 
	WHERE Category='OUTSTANDING PICTURE' 
	OR Category='OUTSTANDING MOTION PICTURE' 
	OR Category='OUTSTANDING PICTURE' 
	OR Category='BEST MOTION PICTURE'
	OR Category='BEST PICTURE';

SELECT * FROM PICTURE;

SELECT * FROM AWARDS 
	WHERE Category='ACTOR' 
	OR Category='ACTOR IN A LEADING ROLE';

CREATE TABLE ACTOR(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ACTOR
SELECT * FROM AWARDS 
	WHERE Category='ACTOR' 
	OR Category='ACTOR IN A LEADING ROLE';

SELECT * FROM ACTOR;

SELECT * FROM AWARDS 
	WHERE Category='ACTOR IN A SUPPORTING ROLE';

CREATE TABLE ACTORSUPPORTING(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ACTORSUPPORTING
SELECT * FROM AWARDS 
	WHERE Category='ACTOR IN A SUPPORTING ROLE';

SELECT * FROM ACTORSUPPORTING;

SELECT * FROM AWARDS 
	WHERE Category='ACTRESS' 
	OR Category='ACTRESS IN A LEADING ROLE';

CREATE TABLE ACTRESS(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ACTRESS
SELECT * FROM AWARDS 
	WHERE Category='ACTRESS' 
	OR Category='ACTRESS IN A LEADING ROLE';

SELECT * FROM ACTRESS;

SELECT * FROM AWARDS 
	WHERE Category='ACTRESS IN A SUPPORTING ROLE';

CREATE TABLE ACTRESSSUPPORTING(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ACTRESSSUPPORTING
SELECT * FROM AWARDS 
	WHERE Category='ACTRESS IN A SUPPORTING ROLE';

SELECT * FROM ACTRESSSUPPORTING;

SELECT * FROM AWARDS 
	WHERE Category='DIRECTING' 
	OR Category='DIRECTING (Comedy Picture)'
	OR Category='DIRECTING (Dramatic Picture)';

CREATE TABLE DIRECTOR(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO DIRECTOR
SELECT * FROM AWARDS 
	WHERE Category='DIRECTING' 
	OR Category='DIRECTING (Comedy Picture)'
	OR Category='DIRECTING (Dramatic Picture)';

SELECT * FROM DIRECTOR;

SELECT * FROM AWARDS 
	WHERE Category='WRITING' 
	OR Category='WRITING (Adaptation)'
	OR Category='WRITING (Original Story)'
	OR Category='WRITING (Title Writing)'
	OR Category='WRITING (Adapted Screenplay)'
	OR Category='WRITING (Motion Picture Story)'
	OR Category='WRITING (Original Motion Picture Story)'
	OR Category='WRITING (Original Screenplay)'
	OR Category='WRITING (Screenplay)'
	OR Category='WRITING (Story and Screenplay)'
	OR Category='WRITING (Screenplay--Adapted)'
	OR Category='WRITING (Screenplay--Original)'
	OR Category='WRITING (Screenplay--based on material from another medium)'
	OR Category='WRITING (Story and Screenplay--written directly for the screen)'
	OR Category='WRITING (Story and Screenplay--based on material not previously published or produced)'
	OR Category='WRITING (Story and Screenplay--based on factual material or material not previously published or produced)'
	OR Category='WRITING (Screenplay Adapted from Other Material)'
	OR Category='WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)'
	OR Category='WRITING (Screenplay Written Directly for the Screen)'
	OR Category='WRITING (Screenplay Based on Material Previously Produced or Published)';

CREATE TABLE SCREENPLAY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO SCREENPLAY
SELECT * FROM AWARDS 
	WHERE Category='WRITING' 
	OR Category='WRITING (Adaptation)'
	OR Category='WRITING (Original Story)'
	OR Category='WRITING (Title Writing)'
	OR Category='WRITING (Adapted Screenplay)'
	OR Category='WRITING (Motion Picture Story)'
	OR Category='WRITING (Original Motion Picture Story)'
	OR Category='WRITING (Original Screenplay)'
	OR Category='WRITING (Screenplay)'
	OR Category='WRITING (Story and Screenplay)'
	OR Category='WRITING (Screenplay--Adapted)'
	OR Category='WRITING (Screenplay--Original)'
	OR Category='WRITING (Screenplay--based on material from another medium)'
	OR Category='WRITING (Story and Screenplay--written directly for the screen)'
	OR Category='WRITING (Story and Screenplay--based on material not previously published or produced)'
	OR Category='WRITING (Story and Screenplay--based on factual material or material not previously published or produced)'
	OR Category='WRITING (Screenplay Adapted from Other Material)'
	OR Category='WRITING (Screenplay Written Directly for the Screen--based on factual material or on story material not previously published or produced)'
	OR Category='WRITING (Screenplay Written Directly for the Screen)'
	OR Category='WRITING (Screenplay Based on Material Previously Produced or Published)';


SELECT * FROM SCREENPLAY;

SELECT * FROM AWARDS 
	WHERE Category='SPECIAL FOREIGN LANGUAGE FILM AWARD'
	OR Category='HONORARY FOREIGN LANGUAGE FILM AWARD'
	OR Category='FOREIGN LANGUAGE FILM'
	OR Category='INTERNATIONAL FEATURE FILM';

CREATE TABLE FOREIGNLANGUAGEFILMS(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO FOREIGNLANGUAGEFILMS
SELECT * FROM AWARDS 
	WHERE Category='SPECIAL FOREIGN LANGUAGE FILM AWARD'
	OR Category='HONORARY FOREIGN LANGUAGE FILM AWARD'
	OR Category='FOREIGN LANGUAGE FILM'
	OR Category='INTERNATIONAL FEATURE FILM';

SELECT * FROM FOREIGNLANGUAGEFILMS;
	
SELECT * FROM AWARDS 
	WHERE Category='MUSIC (Scoring)'
	OR Category='MUSIC (Original Score)'
	OR Category='MUSIC (Music Score of a Dramatic Picture)'
	OR Category='MUSIC (Scoring of a Musical Picture)'
	OR Category='MUSIC (Original Score)'
	OR Category='MUSIC (Music Score of a Dramatic or Comedy Picture)'
	OR Category='MUSIC (Music Score--substantially original)'
	OR Category='MUSIC (Scoring of Music--adaptation or treatment)'
	OR Category='MUSIC (Original Music Score)'
	OR Category='MUSIC (Music Score--substantially original)'
	OR Category='MUSIC (Original Score--for a motion picture [not a musical])'
	OR Category='MUSIC (Score of a Musical Picture--original or adaptation)'
	OR Category='MUSIC (Original Dramatic Score)'
	OR Category='MUSIC (Scoring: Adaptation and Original Song Score)'
	OR Category='MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)'
	OR Category='MUSIC (Adaptation Score)'
	OR Category='MUSIC (Original Musical or Comedy Score)';	

CREATE TABLE SCORING(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO SCORING
SELECT * FROM AWARDS 
	WHERE Category='MUSIC (Scoring)'
	OR Category='MUSIC (Original Score)'
	OR Category='MUSIC (Music Score of a Dramatic Picture)'
	OR Category='MUSIC (Scoring of a Musical Picture)'
	OR Category='MUSIC (Original Score)'
	OR Category='MUSIC (Music Score of a Dramatic or Comedy Picture)'
	OR Category='MUSIC (Music Score--substantially original)'
	OR Category='MUSIC (Scoring of Music--adaptation or treatment)'
	OR Category='MUSIC (Original Music Score)'
	OR Category='MUSIC (Music Score--substantially original)'
	OR Category='MUSIC (Original Score--for a motion picture [not a musical])'
	OR Category='MUSIC (Score of a Musical Picture--original or adaptation)'
	OR Category='MUSIC (Original Dramatic Score)'
	OR Category='MUSIC (Scoring: Adaptation and Original Song Score)'
	OR Category='MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)'
	OR Category='MUSIC (Adaptation Score)'
	OR Category='MUSIC (Original Musical or Comedy Score)';

SELECT * FROM SCORING;

SELECT * FROM AWARDS 
	WHERE Category='MUSIC (Song)'
	OR Category='MUSIC (Song--Original for the Picture)'
	OR Category='MUSIC (Original Song Score)'
	OR Category='MUSIC (Scoring: Adaptation and Original Song Score)'
	OR Category='MUSIC (Song--Original for the Picture)'
	OR Category='MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)'
	OR Category='MUSIC (Original Song)';

CREATE TABLE SONG(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO SONG
SELECT * FROM AWARDS 
	WHERE Category='MUSIC (Song)'
	OR Category='MUSIC (Song--Original for the Picture)'
	OR Category='MUSIC (Original Song Score)'
	OR Category='MUSIC (Scoring: Adaptation and Original Song Score)'
	OR Category='MUSIC (Song--Original for the Picture)'
	OR Category='MUSIC (Scoring: Original Song Score and Adaptation -or- Scoring: Adaptation)'
	OR Category='MUSIC (Original Song)';

SELECT * FROM SONG;

SELECT * FROM AWARDS 
	WHERE Category='CINEMATOGRAPHY'
	OR Category='CINEMATOGRAPHY (Black-and-White)'
	OR Category='CINEMATOGRAPHY (Color)';

CREATE TABLE CINEMATOGRAPHY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO CINEMATOGRAPHY
SELECT * FROM AWARDS 
	WHERE Category='CINEMATOGRAPHY'
	OR Category='CINEMATOGRAPHY (Black-and-White)'
	OR Category='CINEMATOGRAPHY (Color)';

SELECT * FROM CINEMATOGRAPHY;

SELECT * FROM AWARDS 
	WHERE Category='FILM EDITING';

CREATE TABLE FILMEDITING(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO FILMEDITING
SELECT * FROM AWARDS 
	WHERE Category='FILM EDITING';

SELECT * FROM FILMEDITING;

SELECT * FROM AWARDS 
	WHERE Category='ENGINEERING EFFECTS'
	OR Category='SPECIAL EFFECTS'
	OR Category='SPECIAL VISUAL EFFECTS'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Visual Effects)'
	OR Category='VISUAL EFFECTS';

CREATE TABLE VISUALEFFECTS(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO VISUALEFFECTS
SELECT * FROM AWARDS 
	WHERE Category='ENGINEERING EFFECTS'
	OR Category='SPECIAL EFFECTS'
	OR Category='SPECIAL VISUAL EFFECTS'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Visual Effects)'
	OR Category='VISUAL EFFECTS';

SELECT * FROM VISUALEFFECTS;

SELECT * FROM AWARDS 
	WHERE Category='ART DIRECTION'
	OR Category='OUTSTANDING PRODUCTION'
	OR Category='ART DIRECTION (Black-and-White)'
	OR Category='ART DIRECTION (Color)'
	OR Category='PRODUCTION DESIGN';

CREATE TABLE PRODUCTIONDESIGN(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO PRODUCTIONDESIGN
SELECT * FROM AWARDS 
	WHERE Category='ART DIRECTION'
	OR Category='OUTSTANDING PRODUCTION'
	OR Category='ART DIRECTION (Black-and-White)'
	OR Category='ART DIRECTION (Color)'
	OR Category='PRODUCTION DESIGN';

SELECT * FROM PRODUCTIONDESIGN;

SELECT * FROM AWARDS 
	WHERE Category='ANIMATED FEATURE FILM';

CREATE TABLE ANIMATEDFEATURE(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ANIMATEDFEATURE
SELECT * FROM AWARDS 
	WHERE Category='ANIMATED FEATURE FILM';

SELECT * FROM ANIMATEDFEATURE;

SELECT * FROM AWARDS 
	WHERE Category='ART DIRECTION'
	OR Category='OUTSTANDING PRODUCTION'
	OR Category='ART DIRECTION (Black-and-White)'
	OR Category='ART DIRECTION (Color)'
	OR Category='PRODUCTION DESIGN';

CREATE TABLE ANIMATEDFEATURE(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ANIMATEDFEATURE
SELECT * FROM AWARDS 
	WHERE Category='ART DIRECTION'
	OR Category='OUTSTANDING PRODUCTION'
	OR Category='ART DIRECTION (Black-and-White)'
	OR Category='ART DIRECTION (Color)'
	OR Category='PRODUCTION DESIGN';

SELECT * FROM ANIMATEDFEATURE;

SELECT * FROM AWARDS 
	WHERE Category='SHORT SUBJECT (Cartoon)'
	OR Category='SHORT SUBJECT (Novelty)'
	OR Category='SHORT SUBJECT (One-reel)'
	OR Category='SHORT SUBJECT (Two-reel)'
	OR Category='SHORT SUBJECT (Animated)';

CREATE TABLE ANIMATEDSHORT(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO ANIMATEDSHORT
SELECT * FROM AWARDS 
	WHERE Category='SHORT SUBJECT (Cartoon)'
	OR Category='SHORT SUBJECT (Novelty)'
	OR Category='SHORT SUBJECT (One-reel)'
	OR Category='SHORT SUBJECT (Two-reel)'
	OR Category='SHORT SUBJECT (Animated)';

SELECT * FROM ANIMATEDSHORT;

SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY'
	OR Category='DOCUMENTARY (Feature)'
	OR Category='DOCUMENTARY FEATURE FILM';

CREATE TABLE DOCUMENTARY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO DOCUMENTARY
SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY'
	OR Category='DOCUMENTARY (Feature)'
	OR Category='DOCUMENTARY FEATURE FILM';

SELECT * FROM DOCUMENTARY;

SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY'
	OR Category='DOCUMENTARY (Feature)'
	OR Category='DOCUMENTARY FEATURE FILM';

CREATE TABLE DOCUMENTARY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO DOCUMENTARY
SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY'
	OR Category='DOCUMENTARY (Feature)'
	OR Category='DOCUMENTARY FEATURE FILM';

SELECT * FROM DOCUMENTARY;

SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY'
	OR Category='DOCUMENTARY (Feature)'
	OR Category='DOCUMENTARY FEATURE FILM';

CREATE TABLE DOCUMENTARY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO DOCUMENTARY
SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY'
	OR Category='DOCUMENTARY (Feature)'
	OR Category='DOCUMENTARY FEATURE FILM';

SELECT * FROM DOCUMENTARY;

SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY (Short Subject)'
	OR Category='DOCUMENTARY SHORT FILM';

CREATE TABLE SHORTDOCUMENTARY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO SHORTDOCUMENTARY
SELECT * FROM AWARDS 
	WHERE Category='DOCUMENTARY (Short Subject)'
	OR Category='DOCUMENTARY SHORT FILM';

SELECT * FROM SHORTDOCUMENTARY;

SELECT * FROM AWARDS 
	WHERE Category='SHORT SUBJECT (Live Action)'
	OR Category='SHORT FILM (Live Action)'
	OR Category='SHORT FILM (Dramatic Live Action)';

CREATE TABLE LIVEACTION(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO LIVEACTION
SELECT * FROM AWARDS 
	WHERE Category='SHORT SUBJECT (Live Action)'
	OR Category='SHORT FILM (Live Action)'
	OR Category='SHORT FILM (Dramatic Live Action)';

SELECT * FROM LIVEACTION;

SELECT * FROM AWARDS 
	WHERE Category='COSTUME DESIGN (Black-and-White)'
	OR Category='COSTUME DESIGN (Color)'
	OR Category='COSTUME DESIGN';

CREATE TABLE COSTUMEDESIGN(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO COSTUMEDESIGN
SELECT * FROM AWARDS 
	WHERE Category='COSTUME DESIGN (Black-and-White)'
	OR Category='COSTUME DESIGN (Color)'
	OR Category='COSTUME DESIGN'

SELECT * FROM COSTUMEDESIGN;

SELECT * FROM AWARDS 
	WHERE Category='MAKEUP'
	OR Category='MAKEUP AND HAIRSTYLING';

CREATE TABLE MAKEUP(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO MAKEUP
SELECT * FROM AWARDS 
	WHERE Category='MAKEUP'
	OR Category='MAKEUP AND HAIRSTYLING';

SELECT * FROM MAKEUP;

SELECT * FROM AWARDS 
	WHERE Category='SOUND RECORDING'
	OR Category='SOUND'
	OR Category='SOUND EFFECTS'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Sound Effects)'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Sound Editing)'
	OR Category='SOUND EFFECTS EDITING'
	OR Category='SOUND MIXING';

CREATE TABLE SOUND(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO SOUND
SELECT * FROM AWARDS 
	WHERE Category='SOUND RECORDING'
	OR Category='SOUND'
	OR Category='SOUND EFFECTS'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Sound Effects)'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Sound Effects Editing)'
	OR Category='SPECIAL ACHIEVEMENT AWARD (Sound Editing)'
	OR Category='SOUND EFFECTS EDITING'
	OR Category='SOUND MIXING';

SELECT * FROM SOUND;

SELECT * FROM AWARDS 
	WHERE Category='HONORARY AWARD';

CREATE TABLE HONORARY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO HONORARY
SELECT * FROM AWARDS 
	WHERE Category='HONORARY AWARD';

SELECT * FROM HONORARY;

SELECT * FROM AWARDS 
	WHERE Category='HONORARY AWARD';

CREATE TABLE HONORARY(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO HONORARY
SELECT * FROM AWARDS 
	WHERE Category='HONORARY AWARD';

SELECT * FROM HONORARY;

SELECT * FROM AWARDS 
	WHERE Category='SPECIAL AWARD';

CREATE TABLE SPECIAL(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO SPECIAL
SELECT * FROM AWARDS 
	WHERE Category='SPECIAL AWARD';

SELECT * FROM SPECIAL;

SELECT * FROM AWARDS 
	WHERE Category='IRVING G. THALBERG MEMORIAL AWARD';

CREATE TABLE IRVING(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO IRVING
SELECT * FROM AWARDS 
	WHERE Category='IRVING G. THALBERG MEMORIAL AWARD';

SELECT * FROM IRVING;

SELECT * FROM AWARDS 
	WHERE Category='JEAN HERSHOLT HUMANITARIAN AWARD';

CREATE TABLE JEAN(
	ID SERIAL,
	Year_Film INT,
	Year_Ceremony INT,
	Ceremony INT,
	Category VARCHAR(500),
	Name VARCHAR(500),
	Film VARCHAR(500),
	Winner VARCHAR(500)
);

INSERT INTO JEAN
SELECT * FROM AWARDS 
	WHERE Category='JEAN HERSHOLT HUMANITARIAN AWARD';

SELECT * FROM JEAN;

DELETE FROM JEAN 
WHERE Name IS NULL;

SELECT * FROM JEAN;
