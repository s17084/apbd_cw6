use s17084

INSERT INTO Studies VALUES (100, 'Informatyka')
INSERT INTO Studies VALUES (101, 'Budownictwo')
INSERT INTO Studies VALUES (102, 'Elektronika')
INSERT INTO Studies VALUES (103, 'Stosunki Miêdzynarodowe')
INSERT INTO Studies VALUES (104, 'Filologia Finlandzka')
GO

INSERT INTO Enrollment VALUES (200, 1, 100, '2020/03/01')
INSERT INTO Enrollment VALUES (201, 2, 100, '2020/03/01')
INSERT INTO Enrollment VALUES (202, 2, 102, '2020/03/01')
INSERT INTO Enrollment VALUES (203, 3, 103, '2020/03/01')
INSERT INTO Enrollment VALUES (204, 6, 104, '2020/03/01')
GO

INSERT INTO Student VALUES('s001', 'Jan', 'Nowak', '1999/12/03', 200)
INSERT INTO Student VALUES('s002', 'Piotr', 'Kowalski', '1994/01/11', 200)
INSERT INTO Student VALUES('s003', 'Pawe³', 'Krawczyk', '1990/05/16', 201)
INSERT INTO Student VALUES('s004', 'Olga', 'Tokarczuk', '2000/05/01', 202)
INSERT INTO Student VALUES('s005', 'Mateusz', 'Kuœnierewicz', '1995/07/22', 203)
INSERT INTO Student VALUES('s006', 'Hermenegilda', 'Psikuta', '1995/02/28', 203)
INSERT INTO Student VALUES('s007', 'Hiacynta', 'Fijo³ek', '1992/11/18', 203)
GO

SELECT * FROM Studies
SELECT * FROM Enrollment
SELECT * FROM Student