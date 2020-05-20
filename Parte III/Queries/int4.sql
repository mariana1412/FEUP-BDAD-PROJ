.mode       columns
.headers    on
.nullvalue  NULL

--  Qual a percentagem de desistência por prova individual?

SELECT DateTime AS Class,  (IFNULL(Withdrawal, 0)*100/Total) AS WithdrawalPercent
FROM (
    (SELECT DateTime, COUNT(*) AS Total
    FROM IndividualParticipation
    GROUP BY DateTime)

    LEFT OUTER JOIN

    (SELECT DateTime, COUNT(*) AS Withdrawal
    FROM IndividualWithdrawal
    GROUP BY DateTime)

    USING(DateTime)
); 