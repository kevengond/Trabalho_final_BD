INSERT INTO cliente VALUES (67, 'Rua dos laranjais', 'Matheus', '(62)988884444');
INSERT INTO cliente VALUES (68, 'Rua do Governador', 'Luca', '(62)98000-5555');
INSERT INTO cliente VALUES (69, 'Rua do aviador', 'Keven','(62)94445-5555');
INSERT INTO cliente VALUES (66, 'Alameda Principal', 'João','(62)98445-5555');
INSERT INTO cliente VALUES (65, 'Rua do amanhecer', 'Isabela','(62)98985-5555');
INSERT INTO cliente VALUES (62, 'Rua H-76', 'Raquel','(62)97745-5555');
INSERT INTO cliente VALUES (56, 'Rua do anoitecer', 'Isabel', '(62)93335-5555');
INSERT INTO cliente VALUES (55, 'Rua H-90', 'Ana Laura','(62)90045-5555');
INSERT INTO cliente VALUES (51, 'Av V5', 'Amanda', '(62)96665-5555');
INSERT INTO cliente VALUES (58, 'Rua JK', 'Jonas', '(62)94445-7777');
INSERT INTO cliente VALUES (30, 'Rua dos lirios', 'Arthur', '(62)93995-5555');
INSERT INTO cliente VALUES (31, 'Rua H-99', 'Angêla','(62)92045-5555');
INSERT INTO cliente VALUES (32, 'Av V8', 'Vanessa', '(62)96665-5555');
INSERT INTO cliente VALUES (33, 'Rua dona iris', 'Marta', '(62)94445-7337');
INSERT INTO cliente VALUES (20, 'Rua do Marechal', 'Leonardo', '(62)93995-5225');
INSERT INTO cliente VALUES (21, 'Rua H-09', 'Sara','(62)92945-5215');
INSERT INTO cliente VALUES (22, 'Av V8', 'Vanessa', '(62)93365-5555');
INSERT INTO cliente VALUES (23, 'Rua dona iris', 'Marta', '(62)98845-7337');

INSERT INTO cliente_fisico VALUES (67, '111111111');
INSERT INTO cliente_fisico VALUES (68, '222222222');
INSERT INTO cliente_fisico VALUES (69, '333333333');
INSERT INTO cliente_fisico VALUES (66, '444444444');
INSERT INTO cliente_fisico VALUES (65, '555555555');
INSERT INTO cliente_fisico VALUES (62, '666666666');
INSERT INTO cliente_fisico VALUES (56, '777777777');
INSERT INTO cliente_fisico VALUES (55, '888888888');
INSERT INTO cliente_fisico VALUES (51, '999999999');
INSERT INTO cliente_fisico VALUES (58, '400000000');

INSERT INTO cliente_juridico VALUES (30, '999995555');
INSERT INTO cliente_juridico VALUES (31, '920045555');
INSERT INTO cliente_juridico VALUES (32, '966665555');
INSERT INTO cliente_juridico VALUES (33, '944457337');
INSERT INTO cliente_juridico VALUES (20, '939985225');
INSERT INTO cliente_juridico VALUES (21, '929465215');
INSERT INTO cliente_juridico VALUES (22, '933675555');
INSERT INTO cliente_juridico VALUES (23, '988437337');

INSERT INTO conta_poupanca VALUES (155, 100000.00, '2000-12-20', 0.01,67);
INSERT INTO conta_poupanca VALUES (120, 10000.00, '2020-10-20', 0.01,68);
INSERT INTO conta_poupanca VALUES (125, 1000.00, '2005-12-10', 0.01,69);
INSERT INTO conta_poupanca VALUES (225, 20000.00, '2015-06-10', 0.01,66);
INSERT INTO conta_poupanca VALUES (245, 20000.00, '2011-07-25', 0.01,65);
INSERT INTO conta_poupanca VALUES (195, 2050.00, '2011-08-11', 0.01,62);
INSERT INTO conta_poupanca VALUES (198, 20500.00, '2012-09-05', 0.01,56);
INSERT INTO conta_poupanca VALUES (188, 2050.00, '2011-08-11', 0.01,55);
INSERT INTO conta_poupanca VALUES (128, 20500.00, '2012-11-05', 0.01,51);


INSERT INTO conta_corrente VALUES (350, 100000.00, '2000-12-20',30);
INSERT INTO conta_corrente VALUES (320, 10000.00, '2020-10-20',31);
INSERT INTO conta_corrente VALUES (325, 1000.00, '2005-12-10',32);
INSERT INTO conta_corrente VALUES (425, 20000.00,'2015-06-10',33);
INSERT INTO conta_corrente VALUES (345, 20000.00, '2011-07-25',20);
INSERT INTO conta_corrente VALUES (395, 2050.00, '2011-08-11',21);
INSERT INTO conta_corrente VALUES (445, 2800.00, '2012-09-05',22);
INSERT INTO conta_corrente VALUES (455, 28500.00, '2022-09-15',23);
INSERT INTO conta_corrente VALUES (388, 2380.00, '2012-09-28',55);
INSERT INTO conta_corrente VALUES (385, 8870.00, '2017-01-18',51);
INSERT INTO conta_corrente VALUES (311, 10870.00, '2015-01-18',58);

INSERT INTO operação VALUES (292, 500.00, '2023-01-01','saq');
INSERT INTO operação VALUES (293, 250.00, '2023-01-02','dep');
INSERT INTO operação VALUES (294, 850.00, '2023-01-03','dep');
INSERT INTO operação VALUES (295, 580.00, '2023-01-04','saq');
INSERT INTO operação VALUES (296, 280.00, '2023-01-05','dep');
INSERT INTO operação VALUES (297, 882.00, '2023-01-06','dep');
INSERT INTO operação VALUES (298, 500.00, '2023-01-07','saq');
INSERT INTO operação VALUES (299, 250.00, '2023-01-08','dep');
INSERT INTO operação VALUES (300, 850.00, '2023-01-09','dep');
INSERT INTO operação VALUES (301, 500.00, '2023-01-10','saq');
INSERT INTO operação VALUES (302, 250.00, '2023-01-11','dep');
INSERT INTO operação VALUES (303, 850.00, '2023-01-12','dep');
INSERT INTO operação VALUES (304, 580.00, '2023-01-14','saq');
INSERT INTO operação VALUES (305, 280.00, '2023-01-15','dep');
INSERT INTO operação VALUES (306, 882.00, '2023-01-16','dep');
INSERT INTO operação VALUES (307, 500.00, '2023-01-17','saq');
INSERT INTO operação VALUES (308, 250.00, '2023-01-18','dep');
INSERT INTO operação VALUES (309, 850.00, '2023-01-19','dep');


INSERT INTO realiza_operação VALUES (292,67);
INSERT INTO realiza_operação VALUES (293,68);
INSERT INTO realiza_operação VALUES (294,69);
INSERT INTO realiza_operação VALUES (295,66);
INSERT INTO realiza_operação VALUES (296,65);
INSERT INTO realiza_operação VALUES (297,62);
INSERT INTO realiza_operação VALUES (298,56);
INSERT INTO realiza_operação VALUES (299,55);
INSERT INTO realiza_operação VALUES (300,51);
INSERT INTO realiza_operação VALUES (301,58);
INSERT INTO realiza_operação VALUES (302,30);
INSERT INTO realiza_operação VALUES (303,31);
INSERT INTO realiza_operação VALUES (304,32);
INSERT INTO realiza_operação VALUES (305,33);
INSERT INTO realiza_operação VALUES (306,20);
INSERT INTO realiza_operação VALUES (307,21);
INSERT INTO realiza_operação VALUES (308,22);
INSERT INTO realiza_operação VALUES (309,23);

INSERT INTO funcionario('Ana', '123456789', 5000.00);
INSERT INTO funcionario('Ane', '123452333', 6000.00);
INSERT INTO funcionario('Analise','123450000', 5500.00);
INSERT INTO funcionario('Cris', '123451111', 5250.00);
INSERT INTO funcionario('Anabele', '123452222', 6000.00);
INSERT INTO funcionario('Carl', '123453333', 7000.00);
INSERT INTO funcionario('Jonh', '123454444', 5000.00);
INSERT INTO funcionario('Guilherme', '123455555', 5500.00);
INSERT INTO funcionario('João', '123456666', 8000.00);
INSERT INTO funcionario('Madu', '123457777', 8000.00);
INSERT INTO funcionario('Flávia', '123458888', 9000.00);
INSERT INTO funcionario('Alice', '123459999', 7000.00);
INSERT INTO funcionario('Amanda', '123451234', 5000.00);
INSERT INTO funcionario('Lucas', '123451235', 20000.00);
INSERT INTO funcionario('Carl', '123451236', 20000.00);
INSERT INTO funcionario('Livia', '123451237', 20000.00);

INSERT INTO atendente('123456789', 0.1);
INSERT INTO atendente('123452333', 0.1);
INSERT INTO atendente('123450000', 0.1);
INSERT INTO atendente('123451111', 0.1);
INSERT INTO atendente('123452222', 0.1);
INSERT INTO atendente('123453333', 0.1);
INSERT INTO atendente('123454444', 0.1);
INSERT INTO atendente('123455555', 0.1);

INSERT INTO consultor_investimento('123456666',0.15);
INSERT INTO consultor_investimento('123457777',0.15);
INSERT INTO consultor_investimento('123458888',0.15);
INSERT INTO consultor_investimento('123459999',0.15);
INSERT INTO consultor_investimento('123451234',0.15);

INSERT INTO gerente('123451235',0.12);
INSERT INTO gerente('123451236',0.12);
INSERT INTO gerente('123451237',0.12);

INSERT INTO serviço(1, '2023-01-02');
INSERT INTO serviço(2, '2023-01-03');
INSERT INTO serviço(3, '2023-01-04');
INSERT INTO serviço(4, '2023-01-05');
INSERT INTO serviço(5, '2023-01-06');
INSERT INTO serviço(6, '2023-01-07');
INSERT INTO serviço(7, '2023-01-08');
INSERT INTO serviço(8, '2023-01-02');
INSERT INTO serviço(9, '2023-01-03');
INSERT INTO serviço(10, '2023-01-04');
INSERT INTO serviço(11, '2023-01-05');
INSERT INTO serviço(12, '2023-01-06');
INSERT INTO serviço(13, '2023-01-07');
INSERT INTO serviço(14, '2023-01-08');
INSERT INTO serviço(15, '2023-01-02');
INSERT INTO serviço(16, '2023-01-02');
INSERT INTO serviço(17, '2023-01-03');
INSERT INTO serviço(18, '2023-01-04');
INSERT INTO serviço(19, '2023-01-05');
INSERT INTO serviço(20, '2023-01-06');


INSERT INTO seguros(1,2000.00);
INSERT INTO seguros(2,3000.00);
INSERT INTO seguros(3,4000.00);
INSERT INTO seguros(4,5000.00);
INSERT INTO seguros(5,6000.00);
INSERT INTO seguros(16,1000.00);
INSERT INTO seguros(17,1500.00);
INSERT INTO seguros(18,4500.00);
INSERT INTO seguros(19,5200.00);
INSERT INTO seguros(20,5250.00);

INSERT INTO emprestimo(6,2000.00);
INSERT INTO emprestimo(7,3000.00);
INSERT INTO emprestimo(8,4000.00);
INSERT INTO emprestimo(9,5000.00);
INSERT INTO emprestimo(10,6000.00);
INSERT INTO emprestimo(11,8000.00);
INSERT INTO emprestimo(12,1000.00);
INSERT INTO emprestimo(13,2000.00);
INSERT INTO emprestimo(14,1250.00);
INSERT INTO emprestimo(15,1350.00);

INSERT INTO proposta_de_investimento(1,'2023-01-01',500.00, 0.1);
INSERT INTO proposta_de_investimento(2,'2023-01-02',800.00, 0.12);
INSERT INTO proposta_de_investimento(3,'2023-01-03',600.00, 0.1);
INSERT INTO proposta_de_investimento(4,'2023-01-04',700.00, 0.14);
INSERT INTO proposta_de_investimento(5,'2023-01-05',550.00, 0.15);
INSERT INTO proposta_de_investimento(6,'2023-01-06',800.00, 0.13);
INSERT INTO proposta_de_investimento(7,'2023-01-07',500.00, 0.17);
INSERT INTO proposta_de_investimento(8,'2023-01-09',1000.00, 0.14);
INSERT INTO proposta_de_investimento(9,'2023-01-10',500.00, 0.1);
INSERT INTO proposta_de_investimento(10,'2023-01-11',700.00, 0.17);

INSERT INTO analise_seguros('123456789',67,1, '2023-02-01');
INSERT INTO analise_seguros('123452333',68,2,'2023-02-02');
INSERT INTO analise_seguros('123452333',69,3,'2023-02-03');
INSERT INTO analise_seguros('123450000',66,4,'2023-02-04');
INSERT INTO analise_seguros('123451111',65,5,'2023-02-05');
INSERT INTO analise_seguros('123456789',58,16,'2023-02-06');
INSERT INTO analise_seguros('123452333',51,17,'2023-02-07');
INSERT INTO analise_seguros('123452333',30,18,'2023-02-08');
INSERT INTO analise_seguros('123450000',21,19,'2023-02-09');
INSERT INTO analise_seguros('123451111',23,20,'2023-02-10');


INSERT INTO analise_credito('123451235',62,6, '2023-02-01');
INSERT INTO analise_credito('123451236',56,7,'2023-02-02');
INSERT INTO analise_credito('123451237',55,8,'2023-02-03');
INSERT INTO analise_credito('123451235',31,9,'2023-02-04');
INSERT INTO analise_credito('123451237',32,10,'2023-02-05');
INSERT INTO analise_credito('123451236',33,11,'2023-02-06');
INSERT INTO analise_credito('123451235',51,12,'2023-02-07');
INSERT INTO analise_credito('123451236',30,13,'2023-02-08');
INSERT INTO analise_credito('123451237',21,14,'2023-02-09');
INSERT INTO analise_credito('123451237',23,15,'2023-02-10');

INSERT INTO analise_investimento('123456666',67,1, '2023-02-01');
INSERT INTO analise_investimento('123457777',68,2,'2023-02-02');
INSERT INTO analise_investimento('123458888',69,3,'2023-02-03');
INSERT INTO analise_investimento('123459999',66,4,'2023-02-04');
INSERT INTO analise_investimento('123451234',65,5,'2023-02-05');
INSERT INTO analise_investimento('123456666',62,6,'2023-02-06');
INSERT INTO analise_investimento('123457777',56,7,'2023-02-07');
INSERT INTO analise_investimento('123458888',55,8,'2023-02-08');
INSERT INTO analise_investimento('123459999',51,9,'2023-02-09');
INSERT INTO analise_investimento('123451234',58,10,'2023-02-10');

INSERT INTO agencia(1, 'Rua Central, segundo andar, shoping Central', '08004555');
INSERT INTO agencia(2, 'Rua Oeste, segundo andar, shoping Oeste', '08004556');
INSERT INTO agencia(3, 'Rua Leste, segundo andar, shoping leste', '08004557');


INSERT INTO trabalha_em(1,'123456789');
INSERT INTO trabalha_em(1,'123452333');
INSERT INTO trabalha_em(1,'123450000');
INSERT INTO trabalha_em(1,'123456666');
INSERT INTO trabalha_em(1,'123457777');
INSERT INTO trabalha_em(1,'123451235');
INSERT INTO trabalha_em(2,'123451111');
INSERT INTO trabalha_em(2,'123452222');
INSERT INTO trabalha_em(2,'123453333');
INSERT INTO trabalha_em(2,'123458888');
INSERT INTO trabalha_em(2,'123459999');
INSERT INTO trabalha_em(2,'123451236');
INSERT INTO trabalha_em(3,'123454444');
INSERT INTO trabalha_em(3,'123455555');
INSERT INTO trabalha_em(3,'123451234');
INSERT INTO trabalha_em(3,'123451237');

INSERT INTO presta_serviço(1,1);
INSERT INTO presta_serviço(1,2);
INSERT INTO presta_serviço(1,3);
INSERT INTO presta_serviço(1,4);
INSERT INTO presta_serviço(2,5);
INSERT INTO presta_serviço(1,16);
INSERT INTO presta_serviço(1,17);
INSERT INTO presta_serviço(1,18);
INSERT INTO presta_serviço(1,19);
INSERT INTO presta_serviço(2,20);
INSERT INTO presta_serviço(1,6);
INSERT INTO presta_serviço(2,7);
INSERT INTO presta_serviço(3,8);
INSERT INTO presta_serviço(1,9);
INSERT INTO presta_serviço(2,10);
INSERT INTO presta_serviço(3,11);
INSERT INTO presta_serviço(1,12);
INSERT INTO presta_serviço(2,13);
INSERT INTO presta_serviço(3,14);
INSERT INTO presta_serviço(1,15);


INSERT INTO func_telefone(6211111111,'123456789');
INSERT INTO func_telefone(6222222222,'123452333');
INSERT INTO func_telefone(6233333333,'123450000');
INSERT INTO func_telefone(6244444444,'123451111');
INSERT INTO func_telefone(6255555555,'123452222');
INSERT INTO func_telefone(6266666666,'123453333');
INSERT INTO func_telefone(6277777777,'123454444');
INSERT INTO func_telefone(6288888888,'123455555');
INSERT INTO func_telefone(6299999999,'123456666');
INSERT INTO func_telefone(6284444444,'123457777');
INSERT INTO func_telefone(6285555555,'123458888');
INSERT INTO func_telefone(6286666666,'123459999');
INSERT INTO func_telefone(6287777777,'123451234');
INSERT INTO func_telefone(6288888888,'123451235');
INSERT INTO func_telefone(6289999999,'123451236');
INSERT INTO func_telefone(6280000000,'123451237');

