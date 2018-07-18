# Estudos


from a in TB_ASSUNTOs
join p in TB_PRODUTOs on a.COD_PROD equals p.COD_PROD
group p.DES_PROD by p.COD_PROD into g
select new { COD_PROD = g.Key , DES_PROD = g.Distinct()}
