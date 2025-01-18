SELECT 
    Subscription_Type,
    SUM(Subscription_Price + EA_Play_Season_Pass_Price) AS Total_Income
FROM 
    base_de_dados
WHERE 
    EA_Play_Season_Pass = TRUE
GROUP BY 
    Subscription_Type
ORDER BY 
    Subscription_Type;
