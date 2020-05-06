.mode       columns
.headers    on
.nullvalue  NULL

--Quais os cavaleiros (nome e nº de federado) que entre duas datas específicas participaram em pelo menos uma prova (e qual o nº de provas em que participou)?

SELECT RName, NoFederated
FROM Rider
WHERE RiderID IN 
(SELECT RiderID
FROM IndividualParticipation
WHERE julianday(DateTime) >= julianday('2020-05-15 11:00') AND julianday(DateTime) <= julianday('2020-05-21 13:00'));