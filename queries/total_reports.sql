WITH IncomeGroups AS (
    SELECT 
        'A' AS Group_Type,
        SUM(Subscription_Price) AS Total_Income
    FROM 
        base_de_dados
    WHERE 
        EA_Play_Season_Pass = FALSE 
        AND Minecraft_Season_Pass = FALSE
    
    UNION ALL
    
    SELECT 
        'B' AS Group_Type,
        SUM(Subscription_Price + EA_Play_Season_Pass_Price) AS Total_Income
    FROM 
        base_de_dados
    WHERE 
        EA_Play_Season_Pass = TRUE 
        AND Minecraft_Season_Pass = FALSE
    
    UNION ALL
    
    SELECT 
        'C' AS Group_Type,
        SUM(Subscription_Price + Minecraft_Season_Pass_Price) AS Total_Income
    FROM 
        base_de_dados
    WHERE 
        EA_Play_Season_Pass = FALSE 
        AND Minecraft_Season_Pass = TRUE
    
    UNION ALL
    
    SELECT 
        'D' AS Group_Type,
        SUM(Subscription_Price + EA_Play_Season_Pass_Price + Minecraft_Season_Pass_Price) AS Total_Income
    FROM 
        base_de_dados
    WHERE 
        EA_Play_Season_Pass = TRUE 
        AND Minecraft_Season_Pass = TRUE
)

SELECT 
    Group_Type,
    Total_Income,
    ROUND((Total_Income / (SELECT SUM(Total_Income) FROM IncomeGroups)) * 100, 2) AS Percentual_Share
FROM 
    IncomeGroups
ORDER BY 
    Group_Type;
