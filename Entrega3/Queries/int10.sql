--valor total de cada fatura é o preço do quarto mais os serviços requisitados menos o desconto

.mode       columns
.headers    on
.nullvalue  NULL

drop view if exists PrecoQuarto;
create view PrecoQuarto as
select sum(preco) as precoquartos, Fatura.id_fatura as fat1 from PrecoDeQuarto, Cliente, Quarto, Reserva, Fatura, Cartao
where(PrecoDeQuarto.nr_quarto=Quarto.nr_quarto and Reserva.data_inicio >= PrecoDeQuarto.data_inicio and Reserva.data_fim <= PrecoDeQuarto.data_fim
and Reserva.nr_quarto=Quarto.nr_quarto and Reserva.nif =Cliente.nif and Cliente.nif=Cartao.nif and Cartao.id_cartao=Fatura.id_cartao
)
group by Cliente.nif;


drop view if exists ValorTotalServicos;
create view ValorTotalServicos as
select sum(preco*quantidade) as servicos, Fatura.id_fatura as fat2  from Servico, QuantidadeDeServicosPrestados, Fatura
where( Servico.id_servico=QuantidadeDeServicosPrestados.id_servico and QuantidadeDeServicosPrestados.id_fatura=Fatura.id_fatura)
group by QuantidadeDeServicosPrestados.id_fatura;


drop view if exists Desconto;create view Desconto as
select desconto, Fatura.id_fatura as fat3 from DescontoAplicado, Fatura
where(DescontoAplicado.id_fatura=Fatura.id_fatura);

select precoquartos+servicos-desconto as total, fat2 from  ValorTotalServicos, Desconto, PrecoQuarto
where( Desconto.fat3=ValorTotalServicos.fat2 and PrecoQuarto.fat1=Desconto.fat3)
group by fat2 ;
