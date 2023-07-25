-- Retorne todos os atributos de cliente (Consulta Teste) 
select *
from cliente;

-- Selecione todas as contas correntes e contas poupanças que tenham saldo maior ou igual de R$10.000 e retorne o 
-- nome do cliente, id da conta e o saldo. (Union - 1)
select cli.nome, cp.id_conta, cp.saldo
from conta_poupanca as cp inner join cliente as cli on cli.id_conta = cp.id_conta
where cp.saldo >= 10000
union      (select cli.nome, cc.id_conta, cc.saldo
			from conta_corrente as cc  inner join cliente as cli on cli.id_conta = cc.id_conta
			where cc.saldo >= 10000)
order by id_conta asc;


-- Retorne o nome e cpf caso o cliente tenha uma conta poupança e uma conta corrente. ) (Intersect - 2)
select nome, cpf, id_conta
from cliente natural join cliente_fisico natural join  (select id_conta
												 		from (select id_conta 
													  		  from conta_corrente
													  		  intersect
													  		  select id_conta
													  		  from conta_poupanca) as subquery_1) as subquery_2;
															  
-- Retorne nome, cpf, salario e comissão dos atendentes (Aninhadas pela cláusula FROM - 1)
select nome, cpf, salario, comissão
from (select *
	  from atendente
	  ) as subquery_1
	  natural join 
	  (select *
	   from funcionario
	   --where salario >= 500
	  ) as subquery_2;


-- Retorne o nome, endereço e saldo da conta poupança do cliente com o maior saldo que mora especificamente em alguma alameda (Aninhadas pela cláusula FROM - 2)
select cliente.nome, cliente.endereco, conta_poupanca.saldo
from cliente
inner join conta_poupanca on cliente.id_conta = conta_poupanca.id_conta
where conta_poupanca.saldo = (
    select max(saldo)
    from conta_poupanca
    where conta_poupanca.id_conta = cliente.id_conta
) and endereco like 'Alameda%';


-- Retorne o nome de todos os funcionarios que possuem salario = 20.000, 5.000 e 8.000. (in - 1)
select nome, salario
from funcionario where salario in (20000, 5000, 8000)
order by salario asc;


-- Retorne todos os atributos em que os funcionarios recebem pelo menos mais que R$8.000 da tabela funcionario. (some - 2)
select *
from funcionario where salario > some (select 8000);


-- Retorne os atributos dos funcionario que não ganham mais que R$6.000 (exists - 3)
select *
from funcionario f1 where not exists (select 1 
								  	  from funcionario f2 where f1.nome = f2.nome and f2.salario > 6000);
									  
-- Retorne o rendimento da tabela proposta de investimento quando há valor investido entre 500 a 700 (any - 4)
select rendimento
from proposta_de_investimento 
where valor_investido = any (select valor_investido from proposta_de_investimento where valor_investido between 500 and 700);


-- Selecione o nome e endereço dos clientes que possuem conta poupança com saldo maior que R$5000 e taxa de juros acima de 1%. (Consultas aninhadas e correlacionadas - 1)
select nome, endereco 
from cliente 
where id_conta in (
    select id_conta 
    from conta_poupanca 
    where saldo > 5000 and taxa_juros = 0.01
);


-- Selecione o nome dos clientes que possuem empréstimos e o valor total dos empréstimos contratados por cada um deles. (Consultas aninhadas e correlacionadas - 2)
select c.nome, sum(e.valor_emprestimo) as total_emprestimos
from cliente c, emprestimo e, serviço s, analise_credito ac
where c.id_conta = ac.id_conta and
      ac.codigo_serviço = s.codigo_serviço and
      s.codigo_serviço = e.codigo_serviço and
      e.codigo_serviço = ac.codigo_serviço
group by c.nome;


-- Retorne quantas contas poupanças existem (Consulta Escalar - 1)
select count(*) from conta_poupanca;


-- Retorne o saldo da conta numero 311 (Consulta Escalar - 2)
select saldo from conta_corrente where num_conta = 311;


-- Retorne uma consulta para obter a soma dos valores de todas as operações de saque realizadas no mês de janeiro de 2023 (Consulta Escalar - 3)
select sum(valor)
from operação where tipo_operação = 'saq'
and extract(month from data_operação) = 1
and extract(year from data_operação) = 2023;


-- Retorne as informações do nome, telefone e endereço dos clientes que possuem uma conta corrente (consulta envolvendo a operação de junção definida na cláusula FROM - 1)
select c.nome, c.telefone, c.endereco
from cliente c
join conta_corrente cc on c.id_conta = cc.id_conta;

-- Obter informações de todos os serviços e informações de seguro, incluindo serviços que não têm seguro associado. (Consultas envolvendo outer joins - 1)
select *
from serviço
left outer join seguros on serviço.codigo_serviço = seguros.codigo_serviço;


-- Obter o nome de todos os clientes que não possuem nenhum tipo de conta (poupança ou corrente) e também não possuem nenhum registro na tabela 
-- de cliente_fisico ou cliente_juridico. (Consultas envolvendo outer joins - 2)
select c.nome
from cliente c
left join conta_poupanca cp on cp.id_conta = c.id_conta
left join conta_corrente cc on cc.id_conta = c.id_conta
left join cliente_fisico cf on cf.id_conta = c.id_conta
left join cliente_juridico cj on cj.id_conta = c.id_conta
where cp.num_conta is null and cc.num_conta is null
and cf.cpf is null and cj.cnpj is null;


-- Obter o número de análises de investimento realizadas por cada consultor de investimento. (Consultas envolvendo agrupamentos e agregações - 1)
select ai.cpf, count(*) as num_analises
from analise_investimento ai
group by ai.cpf;


-- Consulta para obter o valor total em empréstimos por agência: (Consultas envolvendo agrupamentos e agregações - 2)
select t.num_agencia, sum(e.valor_emprestimo) as valor_total_emprestimo
from emprestimo e
inner join serviço s on e.codigo_serviço = s.codigo_serviço
inner join presta_serviço t on s.codigo_serviço = t.codigo_serviço
group by t.num_agencia;


--Retorne as contas poupança com saldo médio acima de R$ 500, agrupadas pelo cliente que as possui. (Consulta envolvendo a cláusula HAVING - 1)
select cp.id_conta, round(avg(cp.saldo), 2) as saldo_medio
from conta_poupanca as cp
group by cp.id_conta
having avg(cp.saldo) > 500;


--Retorne os serviços que possuem valor de seguro acima de R$ 100, agrupados pelo código do serviço e ordenados em ordem crescente pelo valor. (Consulta envolvendo a cláusula HAVING - 2)
select s.codigo_serviço, sum(seg.valor_seguro) as valor_total_seguro
from serviço as s
inner join seguros as seg on s.codigo_serviço = seg.codigo_serviço
group by s.codigo_serviço
having sum(seg.valor_seguro) > 100
order by valor_total_seguro asc;


-- (Operações de inserção, com restrições de integridade - 1)
INSERT INTO cliente VALUES (100, 'Alameda Pedro I', 'jubileu', '(61)988884444');
INSERT INTO cliente_fisico VALUES (100, '321456987');


-- (Operações de inserção, com restrições de integridade - 2)
INSERT INTO funcionario VALUES ('Josepha', '321456987', 5400.00);
INSERT INTO gerente VALUES ('321456987',0.14);


--(Operações de deleção, com restrições de integridade - 1)
delete from cliente
where id_conta = 100


--(Operações de deleção, com restrições de integridade - 2)
delete from funcionario
where cpf = '321456987'


--(Operações de modificação, com restrições de integridade - 1)
ALTER TABLE analise_investimento
ADD aprovado boolean default null; 


--(Operações de modificação, com restrições de integridade - 2)
UPDATE cliente 
SET endereco = 'Alameda Jose da Silva'
WHERE id_conta = 100;

--(Operações de modificação, com restrições de integridade - 3)
UPDATE cliente_fisico
SET cpf = '121456989'
WHERE id_conta = 100;


-- Lista de clientes que possuem contas correntes, mostrando o número da conta, o saldo atual e a data de cadastro da conta. (Visão - 1)
create view clientes_com_contas_correntes as
select cc.num_conta, cc.saldo, cc.data_cadastro, c.nome,
case when cf.cpf is not null then cf.cpf else cj.cnpj end as documento
from conta_corrente cc
inner join cliente c on cc.id_conta = c.id_conta
left join cliente_fisico cf on c.id_conta = cf.id_conta
left join cliente_juridico cj on c.id_conta = cj.id_conta;


-- Usada para exibir as contas de poupança com saldos acima da média das contas de poupança. (Visão - 2)
CREATE VIEW poupanca_saldos_acima_media AS
SELECT num_conta, saldo, id_conta
FROM conta_poupanca
WHERE saldo > (SELECT AVG(saldo) FROM conta_poupanca);


/*

select *
from poupanca_saldos_acima_media

select *
from cliente_fisico
where id_conta = 100

select *
from funcionario
where cpf = '321456987'

select distinct * --count(*)
from (conta_poupanca as cp inner join conta_corrente as cc on cp.id_conta = cc.id_conta) 


select *
from operação

*/