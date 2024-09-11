--
-- File generated with SQLiteStudio v3.3.3 on qua. dez. 21 19:40:29 2022
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Campeonato
CREATE TABLE Campeonato (
    idCampeonato INTEGER PRIMARY KEY
                         CONSTRAINT nn_campeonato_idcampeonato NOT NULL,
    dataInicio   DATE    CONSTRAINT nn_campeonato_dataInicio NOT NULL,
    idEpoca      INTEGER CONSTRAINT fk_campeonato_idepoca REFERENCES Epoca (idEpoca) ON DELETE SET DEFAULT
                                                                                     ON UPDATE SET DEFAULT
);


-- Table: Clube
CREATE TABLE Clube (
    idClube     INTEGER PRIMARY KEY
                        CONSTRAINT nn_clube_idclube NOT NULL,
    nome        TEXT    CONSTRAINT nn_clube_nome NOT NULL,
    cidade      TEXT    CONSTRAINT nn_clube_cidade NOT NULL,
    anoFundacao INTEGER CONSTRAINT nn_clube_anoFundacao NOT NULL,
    idPavilhao  INTEGER CONSTRAINT id_clube_pavilhao REFERENCES Pavilhao (idPavilhao) ON DELETE RESTRICT
                                                                                      ON UPDATE CASCADE
);


-- Table: Epoca
CREATE TABLE Epoca (
    idEpoca    INTEGER PRIMARY KEY
                       CONSTRAINT nn_epoca_idepoca NOT NULL,
    dataInicio DATE    CONSTRAINT nn_epoca_dataInicio NOT NULL,
    dataFim    DATE    CONSTRAINT nn_epoca_dataFim NOT NULL
);


-- Table: Equipa
CREATE TABLE Equipa (
    idEquipa          INTEGER PRIMARY KEY
                              CONSTRAINT nn_equipa_idequipa NOT NULL,
    nome              TEXT    CONSTRAINT nn_equipa_nome NOT NULL,
    escalao           TEXT    CONSTRAINT check_equipa_escalao CHECK (escalao = 'iniciados' OR 
                                                                     escalao = 'juvenis' OR 
                                                                     escalao = 'juniores' OR 
                                                                     escalao = 'seniores'),
    genero            TEXT    CONSTRAINT check_equipa_genero CHECK (genero = 'feminino' OR 
                                                                    genero = 'masculino'),
    idClube           INTEGER CONSTRAINT fk_equipa_clube REFERENCES Clube (idClube) ON DELETE RESTRICT
                                                                                    ON UPDATE CASCADE,
    idCampeonato      INTEGER CONSTRAINT fk_equipa_campeonato REFERENCES Campeonato (idCampeonato) ON DELETE RESTRICT
                                                                                                   ON UPDATE CASCADE,
    campeonatosGanhos INTEGER
);


-- Table: EquipaJogo
CREATE TABLE EquipaJogo (
    idEquipa INTEGER CONSTRAINT fk_equipajogo_idequipa REFERENCES Equipa (idEquipa) ON DELETE CASCADE
                                                                                    ON UPDATE CASCADE,
    idJogo   INTEGER CONSTRAINT fk_equipajogo_idjogo REFERENCES Jogo (idJogo) ON DELETE CASCADE
                                                                              ON UPDATE CASCADE,
    PRIMARY KEY (
        idEquipa,
        idJogo
    )
);


-- Table: FaseRegular
CREATE TABLE FaseRegular (
    idFaseRegular INTEGER PRIMARY KEY
                          CONSTRAINT nn_faseregular_idfaseregular NOT NULL,
    dataInicio    DATE    CONSTRAINT nn_faseregular_datainicio NOT NULL,
    idCampeonato  INTEGER CONSTRAINT fk_faseregular_campeonato REFERENCES Campeonato (idCampeonato) ON DELETE RESTRICT
                                                                                                    ON UPDATE CASCADE
);


-- Table: Final
CREATE TABLE Final (
    idFinal         INTEGER PRIMARY KEY
                            CONSTRAINT nn_final_idfinal NOT NULL,
    equipasApuradas TEXT    CONSTRAINT nn_final_equipasapuradas NOT NULL,
    idPlayOff       INTEGER CONSTRAINT fk_final_playoff REFERENCES PlayOff (idPlayOff) ON DELETE RESTRICT
                                                                                       ON UPDATE CASCADE,
    idJogo          INTEGER CONSTRAINT fk_final_jogo REFERENCES Jogo (idJogo) ON DELETE RESTRICT
                                                                              ON UPDATE CASCADE
);


-- Table: Golo
CREATE TABLE Golo (
    idGolo    INTEGER PRIMARY KEY
                      CONSTRAINT nn_golo_idgolo NOT NULL,
    minuto    INTEGER CONSTRAINT nn_golo_minuto NOT NULL,
    idJogo    INTEGER REFERENCES Jogo (idJogo),
    idJogador INTEGER REFERENCES Jogador (idJogador) 
);


-- Table: Jogador
CREATE TABLE Jogador (
    idJogador      INTEGER PRIMARY KEY
                           CONSTRAINT nn_jogador_idjogador NOT NULL,
    nome           TEXT    CONSTRAINT nn_jogador_nome NOT NULL,
    dataNascimento DATE    CONSTRAINT nn_jogador_dataNascimento NOT NULL,
    estado         TEXT    CONSTRAINT check_jogador_estado CHECK (estado = 'ativo' OR 
                                                                  estado = 'inativo'),
    idEquipa       INTEGER CONSTRAINT fk_jogador_equipa REFERENCES Equipa (idEquipa) ON DELETE RESTRICT
                                                                                     ON UPDATE CASCADE,
    numeroGolos    INTEGER
);


-- Table: Jogo
CREATE TABLE Jogo (
    idJogo           INTEGER PRIMARY KEY
                             CONSTRAINT nn_jogo_idjogo NOT NULL,
    data             DATE    CONSTRAINT nn_jogo_data NOT NULL,
    hora             TIME    CONSTRAINT nn_jogo_hora NOT NULL,
    resultado        TEXT,
    idPavilhao       INTEGER REFERENCES Pavilhao (idPavilhao),
    idJornada        INTEGER REFERENCES Jornada (idJornada),
    idCampeonato     INTEGER REFERENCES Campeonato (idCampeonato),
    jogadorMaisGolos INTEGER
);


-- Table: Jornada
CREATE TABLE Jornada (
    idJornada     INTEGER PRIMARY KEY
                          CONSTRAINT nn_jornada_idjornada NOT NULL,
    numero        INTEGER CONSTRAINT nn_jornada_numero NOT NULL
                          CONSTRAINT check_jornada_numero CHECK (numero > 0 AND 
                                                                 numero < 27),
    idFaseRegular INTEGER REFERENCES FaseRegular (idFaseRegular) 
);


-- Table: MeiasFinais
CREATE TABLE MeiasFinais (
    idMeiasFinais   INTEGER PRIMARY KEY
                            CONSTRAINT nn_meiasfinais_idmeiasfinais NOT NULL,
    equipasApuradas TEXT    CONSTRAINT nn_meiasfinais_equipasapuradas NOT NULL,
    idPlayOff       INTEGER REFERENCES PlayOff (idPlayOff),
    idJogo          INTEGER REFERENCES Jogo (idJogo) 
);


-- Table: Pavilhao
CREATE TABLE Pavilhao (
    idPavilhao INTEGER PRIMARY KEY
                       CONSTRAINT nn_pavilhao_idpavilhao NOT NULL,
    nome       TEXT    CONSTRAINT nn_pavilhao_nome NOT NULL,
    local      TEXT    CONSTRAINT nn_pavilhao_local NOT NULL
);


-- Table: PlayOff
CREATE TABLE PlayOff (
    idPlayOff    INTEGER PRIMARY KEY
                         CONSTRAINT nn_playoff_idplayoff NOT NULL,
    dataInicio   DATE    CONSTRAINT nn_playoff_datainicio NOT NULL,
    idCampeonato INTEGER REFERENCES Campeonato (idCampeonato) 
);


-- Table: QuartosFinal
CREATE TABLE QuartosFinal (
    idQuartosFinal  INTEGER PRIMARY KEY
                            CONSTRAINT nn_quartosfinal_idquartosfinal NOT NULL,
    equipasApuradas TEXT    CONSTRAINT nn_quartosfinal_equipasapuradas NOT NULL,
    idPlayOff       INTEGER REFERENCES PlayOff (idPlayOff),
    idJogo          INTEGER REFERENCES Jogo (idJogo) 
);


-- Table: ResultadoCampeonato
CREATE TABLE ResultadoCampeonato (
    idResultadoCampeonato     INTEGER PRIMARY KEY
                                      CONSTRAINT nn_resultadoscampeonato_idresultadoscampeonato NOT NULL,
    equipaApuradaLigaCampeoes TEXT    CONSTRAINT nn_resultadocampeonato_equipaapuradaligacampeoes NOT NULL,
    equipaDespromovida1       TEXT    CONSTRAINT nn_resultadocampeonato_equipadespromovida1 NOT NULL,
    equipaDespromovida2       TEXT    CONSTRAINT nn_resultadocampeonato_equipadespromovida2 NOT NULL,
    idFinal                   INTEGER REFERENCES Final (idFinal),
    equipaVencedora           TEXT    NOT NULL
);


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
