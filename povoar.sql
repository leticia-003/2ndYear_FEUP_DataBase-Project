PRAGMA foreign_keys = on;
BEGIN TRANSACTION;


-- Table: Epoca
INSERT INTO Epoca (
                       idEpoca,
                       dataInicio,
                       dataFim
                   )
                   VALUES (
                       4000,
                       '2020-10-09',
                       '2021-06-21' 
                   );


-- Table: Pavilhao
INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1501,
                       'Pavilhão Fidelidade',
                       'Lisboa'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1502,
                       'Pavilhão João Rocha',
                       'Lisboa'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1503,
                       'Pavilhão Leões Porto Salvo',
                       'Oeiras'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1504,
                       'Pavilhão Gimnodesportivo de Ponte de Sor',
                       'Ponte de Sor'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1505,
                       'Pavilhão Municipal do Fundão',
                       'Fundão'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1506,
                       'Centro Recreativo e Cultural da Quinta dos Lombos',
                       'Carcavelos'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1507,
                       'Pavilhão Municipal António Costeira',
                       'Oliveira de Azeméis'
                       
                   );

INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1508,
                       'Pavilhão Municipal de Portimão',
                       'Portimão'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1509,
                       'Pavilhão Desportivo do CR Candoso',
                       'Guimarães'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1510,
                       'Pavilhão Desportivo da Universidade do Minho',
                       'Braga'
                       
                   );



INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1511,
                       'Pavilhão Desportivo Viriato',
                       'Viseu'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1512,
                       'Pavilhão Gimnodesportivo do Modicus',
                       'Gaia'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1513,
                       'Pavilhão Desportivo do Torreense',
                       'Torres Vedras'
                       
                   );


INSERT INTO Pavilhao (
                       idPavilhao,
                       nome,
                       local
                      
                   )
                   VALUES (
                       1514,
                       'Pavilhão do Nun Álvares',
                       'Fafe'
                       
                   );

-- Table: Campeonato
INSERT INTO Campeonato (
                       idCampeonato,
                       dataInicio,
                       idEpoca
                    )
                   VALUES (
                       1000,
                       2021-10-09,
                       4000
                   );


-- Table: Clube
INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1401,
                       'Benfica',
                       'Lisboa',
                       2001,
		       1501
                       
                   );

INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1402,
                       'Nun Álvares',
                       'Fafe',
                       1932,
                       1514
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1403,
                       'Sporting',
                       'Lisboa',
                       1985,
		       1502
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1404,
                       'Novasemente',
                       'Espinho',
                       1978,
                    1504
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1405,
                       'Santa Luzia',
                       'Viana do Castelo',
                       1995,
                    1505
                       
                   );                   


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1406,
                       'Santa Luzia',
                       'Viana do Castelo',
                       1995,
                    1506
                       
                   );  


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1410,
                       'Quinta dos Lombos',
                       'Carcavelos',
                       1975,
                       1506
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1412,
                       'Leões Porto Salvo',
                       'Oeiras',
                       1970,
		       1503
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1415,
                       'Elétrico',
                       'Ponte de Sor',
                       1929,
                       1504
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1416,
                       'AD Fundão',
                       'Fundão',
                       1955,
                       1505
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1417,
                       'SC Braga/AAUM',
                       'Braga',
                       1921,
                       1510
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1418,
                       'FC Azeméis by Noxae',
                       'Oliveira de Azeméis',
                       2004,
                       1507
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1419,
                       'Portimonense',
                       'Portimão',
                       1914,
                       1508
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1420,
                       'CR Candoso/Natcal',
                       'Portimão',
                       1975,
                       1509
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1421,
                       'Viseu 2001/Palácio do Gelo',
                       'Viseu',
                       2002,
                       1511
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1422,
                       'Modicus Cartest',
                       'Gaia',
                       1975,
                       1512
                       
                   );


INSERT INTO Clube (
                       idClube,
                       nome,
                       cidade,
                       anoFundacao,
                       idPavilhao
                   )
                   VALUES (
                       1423,
                       'Torreense',
                       'Torres Vedras',
                       2018,
                       1513
                       
                   );



--Tabela Equipa

INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1301,
                       'Benfica',
                       'seniores',
                       'feminino',
                       1401,
                       1000,
                       15
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1302,
                       'Nun´Alvares',
                       'seniores',
                       'feminino',
                       1402,
                       1000,
                       3
                   );


INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1304,
                       'Novasemente',
                       'seniores',
                       'feminino',
                       1404,
                       1000,
                       6
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1305,
                       'Santa Luzia',
                       'seniores',
                       'feminino',
                       1405,
                       1000,
                       9
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1306,
                       'FC Vermoim',
                       'seniores',
                       'feminino',
                       1406,
                       1000,
                       14
                   );


INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1310,
                       'Quinta dos Lombos',
                       'seniores',
                       'feminino',
                       1410,
                       1000,
                       2
                   );


INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1312,
                       'Leões Porto Salvo',
                       'seniores',
                       'feminino',
                       1412,
                       1000,
                       0
                   );


INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1316,
                       'Benfica',
                       'seniores',
                       'masculino',
                       1401,
                       1000,
                       5
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1317,
                       'Elétrico',
                       'seniores',
                       'masculino',
                       1415,
                       1000,
                       8
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1318,
                       'AD Fundão',
                       'seniores',
                       'masculino',
                       1416,
                       1000,
                       0
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1319,
                       'Quinta dos Lombos',
                       'seniores',
                       'masculino',
                       1410,
                       1000,
                       4
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1320,
                       'SC Braga/AAUM',
                       'seniores',
                       'masculino',
                       1417,
                       1000,
                       10
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1321,
                       'Leões Porto Salvo',
                       'seniores',
                       'masculino',
                       1412,
                       1000,
                       1
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1322,
                       'FC Azeméis by Noxae',
                       'seniores',
                       'masculino',
                       1418,
                       1000,
                       0
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1323,
                       'Portimonense',
                       'seniores',
                       'masculino',
                       1419,
                       1000,
                       2
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1324,
                       'CR Candoso/Natcal',
                       'seniores',
                       'masculino',
                       1420,
                       1000,
                       6
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1325,
                       'Viseu 2001/Palácio do Gelo',
                       'seniores',
                       'masculino',
                       1421,
                       1000,
                       9
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1326,
                       'Modicus Cartest',
                       'seniores',
                       'masculino',
                       1422,
                       1000,
                       0
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1327,
                       'Torreense',
                       'seniores',
                       'masculino',
                       1423,
                       1000,
                       4
                   );
INSERT INTO Equipa (
                       idEquipa,
                       nome,
                       escalao,
                       genero,
                       idClube,
                       idCampeonato,
                       campeonatosGanhos
                   )
                   VALUES (
                       1328,
                       'Nun´Álvares',
                       'seniores',
                       'masculino',
                       1402,
                       1000,
                       6
                   );


-- Table: Jogador
INSERT INTO Jogador (
                       idJogador,
                       nome,
                       dataNascimento,
                       estado,
                       idEquipa,
                       numeroGolos
                   )
                   VALUES (
                       1201,
                       'Ana Maria Pereira',
                       '1995-12-16',
                       'ativo',
                       1301,
                       2
                   );


INSERT INTO Jogador (
                       idJogador,
                       nome,
                       dataNascimento,
                       estado,
                       idEquipa,
                       numeroGolos
                   )
                   VALUES (
                       1202,
                       'Cátia Morgado',
                       '1989-08-16',
                       'ativo',
                       1302,
                       6
                   );


INSERT INTO Jogador (
                       idJogador,
                       nome,
                       dataNascimento,
                       estado,
                       idEquipa,
                       numeroGolos
                   )
                   VALUES (
                       1204,
                       'Joana Moreira',
                       '1995-09-07',
                       'ativo',
                       1304,
                       1
                   );


INSERT INTO Jogador (
                       idJogador,
                       nome,
                       dataNascimento,
                       estado,
                       idEquipa,
                       numeroGolos
                   )
                   VALUES (
                       1205,
                       'Afonso Jesus',
                       '1998-01-06',
                       'ativo',
                       1316,
                       0
                   );


INSERT INTO Jogador (
                       idJogador,
                       nome,
                       dataNascimento,
                       estado,
                       idEquipa,
                       numeroGolos
                   )
                   VALUES (
                       1212,
                       'Mateus Nascimento',
                       '2003-08-08',
                       'ativo',
                       1327,
                       3
                   );





-- Table: Jogo
INSERT INTO Jogo (
                       idJogo,
                       data,
                       hora,
                       resultado,
                       idPavilhao,
                       idJornada,
                       idCampeonato,
                       jogadorMaisGolos
                   )
                   VALUES (
                       5001,
                       '2021-12-01',
                       '16:00',
                       "3-2",
                       1501,
                       7001,
                       1000,
                       8000
                   );
INSERT INTO Jogo (
                       idJogo,
                       data,
                       hora,
                       resultado,
                       idPavilhao,
                       idJornada,
                       idCampeonato,
                       jogadorMaisGolos
                   )
                   VALUES (
                       5002,
                       '2021-10-14',
                       '21:00',
                       "0-1",
                       1504,
                       7002,
                       1000,
                       8001


                   );


-- Table: Golo
INSERT INTO Golo (
                       idGolo,
                       minuto,
                       idJogo,
                       idJogador
                   )
                   VALUES (
                       6001,
                       83,
                       5001,
                       1202
                   );
INSERT INTO Golo (
                       idGolo,
                       minuto,
                       idJogo,
                       idJogador
                   )
                   VALUES (
                       6002,
                       12,
                       5002,
                       1212
                   );


-- Table: FaseRegular
INSERT INTO FaseRegular (
                       idFaseRegular,
                       dataInicio,
                       idCampeonato

                   )
                   VALUES (
                       9001,
                       '2021-10-09',
                       1000
                       
                   );


-- Table: Jornada
INSERT INTO Jornada (
                       idJornada,
                       numero,
                       idFaseRegular

                   )
                   VALUES (
                       7001,
                       1,
                       9001
                       
                   );


INSERT INTO Jornada (
                       idJornada,
                       numero,
                       idFaseRegular

                   )
                   VALUES (
                       7002,
                       2,
                       9001
                       
                   );


-- Table: PlayOff
INSERT INTO PlayOff (
                       idPlayOff,
                       dataInicio,
                       idCampeonato
                   )
                   VALUES (
                       1700,
                       '2022-05-27',
                       1000
                   );


-- Table: QuartosFinal
INSERT INTO QuartosFinal (
                       idQuartosFinal,
                       equipasApuradas,
                       idPlayOff,
                       idJogo
                   )
                   VALUES (
                       1800,
                       'FC Azeméis by Noxae, Sporting, Leões Porto Salvo, Benfica, SC Braga, Eléctrico FC/NCWG, Quinta dos Lombos/ARTVISION, AD Fundão/Hotel Alambique',
                       1700,
                       5001
                   );


-- Table: MeiasFinais
INSERT INTO MeiasFinais (
                       idMeiasFinais,
                       equipasApuradas,
                       idPlayOff,
                       idJogo
                   )
                   VALUES (
                       1900,
                       'Sporting, Benfica, Eléctrico FC/NCWG, AD Fundão/Hotel Alambique',
                       1700,
                       5002
                   );


-- Table: Final
INSERT INTO Final (
                       idFinal,
                       equipasApuradas,
                       idPlayOff,
                       idJogo
                   )
                   VALUES (
                       3000,
                       'Sporting, Benfica',
                       1700,
                       5001
                   );


-- Table: ResultadoCampeonato
INSERT INTO ResultadoCampeonato (
                       idResultadoCampeonato,
                       equipaApuradaLigaCampeoes,
                       equipaDespromovida1,
                       equipaDespromovida2,
                       idFinal,
                       equipaVencedora
                   )
                   VALUES (
                       4000,
                       'Sporting',
                       'Torreense',
                       "Nun'Álvares",
                       3000,
                       "Benfica"
                   );