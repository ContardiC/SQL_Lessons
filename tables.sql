#Creeremo una tabella chiamata Dipendenti con i seguenti campi: ID, Nome, Cognome, AnnoDiNascita, Sesso, Posizione, Stipendio, DataAssunzione, ID_Dipartimento.

CREATE TABLE Dipendenti (
    ID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Cognome VARCHAR(100),
    AnnoDiNascita INT,
    Sesso CHAR(1),
    Posizione VARCHAR(100),
    Stipendio DECIMAL(10,2),
    DataAssunzione DATE,
    ID_Dipartimento INT
);
