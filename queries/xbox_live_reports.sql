SELECT 
    Plan,
    Subscription_Type,
    SUM(Subscription_Price) AS Total_Income
FROM 
    base_de_dados
GROUP BY 
    Plan, Subscription_Type
ORDER BY 
    Plan, Subscription_Type;
