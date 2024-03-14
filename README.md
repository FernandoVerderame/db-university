## Esercizio di oggi: DB University
Modellizzare la struttura di un database per memorizzare tutti i dati riguardanti una università:
- sono presenti diversi Dipartimenti (es.: Lettere e Filosofia, Matematica, Ingegneria ecc.);
- ogni Dipartimento offre più Corsi di Laurea (es.: Civiltà e Letterature Classiche, Informatica, Ingegneria Elettronica ecc..)
- ogni Corso di Laurea prevede diversi Corsi (es.: Letteratura Latina, Sistemi Operativi 1, Analisi Matematica 2 ecc.);
- ogni Corso può essere tenuto da diversi Insegnanti;
- ogni Corso prevede più appelli d’Esame;
- ogni Studente è iscritto ad un solo Corso di Laurea;
- ogni Studente può iscriversi a più appelli di Esame;
- per ogni appello d’Esame a cui lo Studente ha partecipato, è necessario memorizzare il voto ottenuto, anche se non sufficiente.

Pensiamo a quali entità (tabelle) creare per il nostro database e cerchiamo poi di stabilirne le relazioni.

Infine, andiamo a definire le colonne e i tipi di dato di ogni tabella.
Esportare il diagramma in jpg e caricarlo nella repo.

![db university](db-university.png)

## Esercizio di oggi: DB University - Queries
Dopo aver creato un nuovo database nel vostro phpMyAdmin importando il file in allegato, eseguite le query che trovate nei PDF, partendo da EX con Select per poi passare a quelle con GROUP.

ESEMPIO di consegna nel file .sql :
1. Selezionare tutti gli insegnanti 
- SELECT * FROM `teachers`;

2. Selezionare tutti i referenti per ogni dipartimento
- SELECT `head_of_department`, `name` FROM `departments`;

3. Selezionare tutti gli studenti il cui nome inizia per "E" (373)
- SELECT * FROM `students` WHERE `name` LIKE 'E%';

## Esercizio di oggi: DB University - Join

Eseguite le query del file allegato sullo stesso database della volta scorsa.