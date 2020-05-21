--Preço dos quartos de casal quando a taxa de ocupação do hotel é superior a 75% e época do ano  de  '20/03/2020' a '21/06/2020'
select preco from PrecoDeQuarto join Quarto on Quarto.nr_quarto=PrecoDeQuarto.nr_quarto where (Quarto.tipo_quarto= ‘casal’ and percentagem>75 and data_inicio='2020-03-20' and data_fim='2020-06-21'); 

