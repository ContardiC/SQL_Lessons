#Seleziona tutti i dipendenti che hanno una posizione di ‘Manager’.
SELECT * FROM Dipendenti WHERE Posizione = 'Manager';
#Aggiorna lo stipendio del dipendente che ha ID = 4. (Supponiamo che tu voglia impostare lo stipendio a 5000)
UPDATE Dipendenti SET Stipendio = 5000 WHERE ID = 4;
#Elimina il dipendente con ID = 5 dalla tabella.
DELETE FROM Dipendenti WHERE ID = 5;
#Conta il numero di dipendenti per ogni posizione.
SELECT Posizione, COUNT(*) FROM Dipendenti GROUP BY Posizione;
#Calcola lo stipendio medio dei dipendenti.
SELECT AVG(Stipendio) FROM Dipendenti;
#Seleziona tutti i dipendenti che sono stati assunti dopo una certa data (Supponiamo che la data sia ‘2023-01-01’)
SELECT * FROM Dipendenti WHERE DataAssunzione > '2023-01-01';
#Seleziona tutti i dipendenti che sono stati assunti dopo una certa data e che hanno uno stipendio maggiore di 1000. (Supponiamo che la data sia ‘2023-01-01’)
SELECT * FROM Dipendenti WHERE DataAssunzione > '2023-01-01' AND Stipendio > 1000;
#Ordina tutti i dipendenti in base al loro stipendio in ordine decrescente.
SELECT * FROM Dipendenti ORDER BY Stipendio DESC;
#Seleziona tutti i dipendenti che hanno uno stipendio compreso tra 1000 e 2000.
SELECT * FROM Dipendenti WHERE Stipendio BETWEEN 1000 AND 2000;
#Seleziona tutti i dipendenti che hanno uno stipendio compreso tra 1000 e 2000 e che sono stati assunti dopo una certa data. (Supponiamo che la data sia ‘2023-01-01’)
SELECT * FROM Dipendenti WHERE Stipendio BETWEEN 1000 AND 2000 AND DataAssunzione > '2023-01-01';
#Seleziona i dipendenti che appartengono a un ID_Dipartimento = 2.
SELECT * FROM Dipendenti WHERE ID_Dipartimento = 2;
#Trova il totale dello stipendio per ogni ID_Dipartimento
SELECT ID_Dipartimento, SUM(Stipendio) FROM Dipendenti GROUP BY ID_Dipartimento;
#Trova il totale dello stipendio per ogni ID_Dipartimento e ordina i risultati in ordine decrescente.
SELECT ID_Dipartimento, SUM(Stipendio) FROM Dipendenti GROUP BY ID_Dipartimento ORDER BY SUM(Stipendio) DESC;
#Seleziona i dipendenti che sono nati dopo il 2000.
SELECT * FROM Dipendenti WHERE AnnoDiNascita > 2000;
#Conta il numero di dipendenti di sesso maschile e femminile.
SELECT Sesso, COUNT(*) FROM Dipendenti GROUP BY Sesso;
#Supponiamo di avere una tabella Dipendenti con un campo ManagerID che fa riferimento all’ID di un altro dipendente che è il manager.
SELECT D1.Nome AS Dipendente, D2.Nome AS Manager
FROM Dipendenti D1
INNER JOIN Dipendenti D2 ON D1.ManagerID = D2.ID;


