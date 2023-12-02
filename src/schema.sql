CREATE DATABASE games;
USE games;
CREATE TABLE categoria(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL
);

--SHOW FIELDS FROM categoria

CREATE TABLE jogo(
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    competitivo BOOLEAN NOT NULL,
    id_categorias INT NOT NULL,
    FOREIGN KEY (id_categorias) REFERENCES categoria(id)
);

--SHOW FIELDS FROM jogo;

CREATE TABLE plataforma(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    id_jogo INT NOT NULL,
    FOREIGN KEY (id_jogo) REFERENCES jogo(id)
);
--SHOW FIELDS FROM plataforma;

CREATE TABLE plataforma_possui_jogos(
    id_jogo INT NOT NULL,
    id_plataforma INT NOT NULL,
    PRIMARY KEY (id_jogo,id_plataforma),
    FOREIGN KEY (id_jogo) REFERENCES jogo(id),
    FOREIGN KEY (id_plataforma) REFERENCES plataforma(id)
);

