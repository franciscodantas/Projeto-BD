SELECT *
FROM PRODUTO
WHERE (PRECO_COMPRA/PRECO_VENDA) > 0.3 OR  (MONTHS_BETWEEN(DATA_VALIDADE, DATA_FABRICACAO) > 12);