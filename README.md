# 📊 SQL KPIs – E-commerce Gamer Sales Analysis

Pequeno projeto de análise de dados utilizando **SQL** para calcular métricas de negócio em uma base fictícia de vendas de produtos gamer em marketplaces.

O objetivo é demonstrar **consultas analíticas usadas no dia a dia de um Analista de Dados / BI**.

---

# 🛠 Ferramentas Utilizadas

* MySQL Workbench – execução das queries SQL
* VS Code – organização e versionamento do projeto
* GitHub – documentação e portfólio

---
# 📦 Estrutura da Base de Dados

Tabela: `vendas_dio`

Principais colunas utilizadas nas análises:

* `Preco`
* `Desconto`
* `Quantidade`
* `Status_Pedido`

Esses campos permitem calcular **métricas comerciais e operacionais do e-commerce**.

---

# 📈 KPIs Calculados

## 1️⃣ Receita Líquida

Calcula o faturamento real considerando descontos aplicados nos pedidos.

```sql
SELECT
    ROUND(SUM(Preco * Quantidade * (1 - Desconto/100)), 2) AS Receita_Liquida
FROM vendas_dio;
```

📌 Insight: mostra quanto o e-commerce realmente faturou após promoções e cupons.

---

## 2️⃣ Taxa de Cancelamento

Mede o percentual de pedidos cancelados em relação ao total de pedidos.

```sql
SELECT
    ROUND(
        SUM(CASE WHEN Status_Pedido = 'Cancelado' THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS Taxa_Cancelamento
FROM vendas_dio;
```

📌 Insight: indicador operacional importante para avaliar problemas de logística, estoque ou experiência do cliente.

---

## 3️⃣ Ticket Médio Real

Calcula o valor médio gasto por pedido considerando descontos.

select
   round(
     sum((Preco - (Preco * (Desconto/100))) * Quantidade)
     / count(*), 2
   ) as Ticket_Medio_Real
from vendas_dio;    
```








