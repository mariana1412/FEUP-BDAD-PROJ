.mode       columns
.headers    on
.nullvalue  NULL

--cavaleiros (nome e nr federado)que entre duas datas específicas participaram em pelo menos uma prova ( e se sim, nº de provas) *

SELECT RName, NoFederated
FROM Rider
WHERE RiderID IN 
(SELECT RiderID
FROM IndividualParticipation
WHERE julianday(DateTime) >= julianday('2020-05-15 11:00') AND julianday(DateTime) <= julianday('2020-05-21 13:00'));