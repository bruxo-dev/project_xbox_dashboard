SELECT 
    Subscription_Type,
    SUM(Minecraft_Season_Pass_Price) AS Total_Income
FROM 
    base_de_dados
WHERE 
    Minecraft_Season_Pass = TRUE
GROUP BY 
    Subscription_Type
ORDER BY 
    Subscription_Type;
