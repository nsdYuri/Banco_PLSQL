-- SET SERVEROUTPUT especifica se a sa�da do buffer de mensagem DBMS_OUTPUT 
-- � redirecionada para a sa�da padr�o, no caso pode ser ON ou OFF.
--SET SERVEROUTPUT ON;

-- Estrutura em Bloco:
--DECLARE
-- �rea de declara��o das variaveis de mem�ria - opcional.

--BEGIN
-- Onde ficar�o as instru��es de funcionamento, processamento, ifs e etc.

--EXCEPTION
-- Ambiente de tratamento de dados - opcional

--END;
-- Indica o fim do Bloco


-- Exercicio 1
SET SERVEROUTPUT ON;

DECLARE
    salario number := 1000;
    novo_salario salario%type;
    
BEGIN
    novo_salario := salario * 0.25;
    dbms_output.put_line(novo_salario);
    
END;

-- Exercicio 2
DECLARE
    em_dolar number := 45;
    em_real number;
    taxa number := 5;

BEGIN
    em_real := em_dolar / taxa;
    dbms_output.put_line(em_real);
    
END;

-- Exercicio 3
DECLARE
    valor_carro number := &valor_carro;
    parcelas number := 10;
    juros float := 0.3;
    valor_parcelas parcelas%type;

BEGIN
    valor_parcelas := (valor_carro / parcelas) * juros;
    dbms_output.put_line(valor_parcelas);
    
END;
commit;


    