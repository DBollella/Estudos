from a in TB_ASSUNTOs
join p in TB_PRODUTOs on a.COD_PROD equals p.COD_PROD
group p.DES_PROD by p.COD_PROD into g
select new { COD_PROD = g.Key , DES_PROD = g.Max()}

/*INPUT
TB_ASSUNTO
COD_ASST	COD_PROD	DES_ASST
1	        1	        Assunto 1
2	        1       	Assunto 2
3	        2	        Assunto 3
4	        2	        Assunto 4

TB_PRODUTO
COD_PROD	DES_PROD
1	        Financeiro
2	        mobiliario


Output
COD_PROD	DES_PROD
1         Financeiro
2	        Imobiliario 
*/
