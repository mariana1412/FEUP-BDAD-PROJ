.mode       columns
.headers    on
.nullvalue  NULL

--Quais os cavaleiros (nome e nº de federado) que entre duas datas específicas participaram em pelo menos uma prova individual?

SELECT RName, NoFederated
FROM Rider, IndividualParticipation
WHERE Rider.RiderID = IndividualParticipation.RiderID AND julianday(DateTime) >= julianday('2020-05-15 11:00') AND julianday(DateTime) <= julianday('2020-05-21 13:00');
