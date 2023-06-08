SELECT cliente.NOME,t.NOME,f.NOME
FROM CLIENTE cliente, FORNECEDOR f, TRANSPORTADORA t, ORDEM_DE_COMPRA o, PRODUTO p, COMPRA_PRODUTO cam, FORNECIMENTO forn
WHERE o.CODIGO_CLIENTE = cliente.CODCLI AND o.CODIGO_TRANSPORTADORA = t.CODTRANS AND cam.CODIGO_COMPRA = o.CODORDEM 
AND cam.CODIGO_PRODUTO = p.CODPROD AND forn.CODIGO_PRODUTO = p.CODPROD AND  forn.CODIGO_FORNECEDOR = f.CODFORN
AND (t.NOME = 'Transportando com amor' OR f.NOME = 'Fornecendo com amor');