CREATE TABLE pessoa (
    pCodigo INT NOT NULL AUTO_INCREMENT,
    pCPF CHAR(11) NOT NULL,
    pNome VARCHAR(40) NOT NULL,
    pDataAniv DATE,
    PRIMARY KEY (pCodigo)
);

INSERT INTO pessoa (pCPF, pNome, pDataAniv) VALUES 
('12345678901', 'Ana Silva', '1985-01-15'),
('23456789012', 'Bruno Souza', '1990-02-20'),
('34567890123', 'Carlos Oliveira', '1982-03-25'),
('45678901234', 'Daniela Lima', '1978-04-30'),
('56789012345', 'Eduardo Pereira', '1995-05-05'),
('67890123456', 'Fernanda Santos', '1992-06-10'),
('78901234567', 'Gabriel Costa', '1988-07-15'),
('89012345678', 'Helena Ferreira', '1980-08-20'),
('90123456789', 'Igor Almeida', '1975-09-25'),
('01234567890', 'Juliana Martins', '1998-10-30'),
('09876543210', 'Leonardo Rocha', '1983-11-05'),
('98765432109', 'Mariana Mendes', '1987-12-10');


SELECT 
    pCodigo,
    pCPF,
    pNome,
    pDataAniv,
    TIMESTAMPDIFF(YEAR, pDataAniv, CURDATE()) AS idade 
FROM 
    pessoa;