select*from vendas_dio;

-- Receita liquida considerando descontos

SELECT
    ROUND(SUM(Preco * Quantidade * (1 - Desconto/100)), 2) AS Receita_Liquida
FROM vendas_dio; 

-- Taxa de Cancelamento

select
    ROUND(
       SUM(CASE WHEN Status_Pedido = 'Cancelado' then 1 else 0 end)
   /COUNT(*) * 100,2
) AS Taxa_Cancelamento
from vendas_dio;

-- Ticket médio considerando desconto

SELECT
   ROUND(
      SUM(Preco - (Preco * (Desconto /100))) * Quantidade
       / COUNT(*),2
   ) AS Ticket_Medio_Real
from vendas_dio;   