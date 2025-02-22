/* ------  Strukturen ----- */
/*      
    Tabelle mit id als PRIMARY KEY --> 
    KEINE Duplikate moeglich
    AUTO_INCREMENT ++
    DEFAULT-Werte eintragen
*/

/* Tabelle löschen, falls vorhanden*/
DROP TABLE IF EXISTS boo.cats;



/* Tabelle cats anlegen, falls noch nicht vorhanden*/
CREATE TABLE IF NOT EXISTS boo.cats
(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT ,
    name VARCHAR(20) NOT NULL DEFAULT "TBA",
    age INT NOT NULL DEFAULT 0
);
 

/* Struktur der Tabelle anzeigen */
DESCRIBE boo.cats;

/* ----- Daten ------- */
INSERT INTO boo.cats(id,name,age) VALUES (012,"Grizablla",29);
INSERT INTO boo.cats(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.cats VALUES ();

-- ABER: Doppelte Datensätze werden zugelassen !
INSERT INTO boo.cats(age,name) VALUES (35,"Alonzo");
INSERT INTO boo.cats(age,name) VALUES (35,"Alonzo");


/* ---- Inhalte der Tabelle anzeigen ---- */
SELECT * FROM boo.cats;
