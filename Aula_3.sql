-- Estrutura de Decis�o
-- if - then - elsif - then - else - end if
-- IF <condi��o> THEN
--      <Intru��es>
--  ELSIF <condi��o> THEN
--       <Instru��es>
--  ELSE
--       <instru��es>
-- END IF;

-- Exercicio 1
DECLARE
    silga_genero CHAR(1) := '&genero';
    genero silga_gereno%type;

BEGIN
    IF silga_genero = 'M' OR silga_genero = 'm' THEN
        genero := 'Masculino';
        dbms_output.put_line(genero);
    ELSIF silga_genero = 'F' OR silga_genero = 'f' THEN
        genero := 'Feminino';
        dbms_output.put_line(genero);
    ELSE
        genero := 'Outros';
        dbms_output.put_line(genero);
    END IF;

    
END;


DECLARE
    SEXO CHAR := '&SEXO';
BEGIN
    IF SEXO='M' OR SEXO='m' THEN
        dbms_output.put_line('MASCULINO');
    ELSIF SEXO='F' OR SEXO='f' THEN
        dbms_output.put_line('FEMININO');
    ELSE 
        dbms_output.put_line('OUTROS');
    END IF;
END;
COMMIT;