SHOW RECYCLEBIN;

flashback table xxxx to before drop;

--Comenario
/* Mais de uma linha
    de Comentario
*/

--
--Comando para ativa o dialogo com o PL/SQL (Só é precisso execultar 1 vez por sessão)
--

SET SERVEROUTPUT ON

--
--Comando para printar alguma coisa/informação
--

DBMS_OUTPUT.PUT_LINE('Texto' || Variavel); 

--
--Criando tabela teste
--

CREATE TABLE DIA1
(COL1 NUMBER, 
COL2 VARCHAR2(30));

INSERT INTO DIA1
    VALUES (10, 'NOME');

COMMIT;

--
--Declaração de Variavel
--

DECLARE
    --Atribuindo o valor a variavel usando o ":="
    V_COL1 NUMBER := 1024;
    V_COL2 VARCHAR2(30) := 'TEXO';
    V_TESTE V_COL2%TYPE;
BEGIN
    SELECT COL1, COL2 INTO V_COL1, V_COL2
        FROM DIA1;
    DBMS_OUTPUT.PUT_LINE(V_COL1);
    DBMS_OUTPUT.PUT_LINE(V_COL2);
    --Exibindo um em baixo do outro
    DBMS_OUTPUT.PUT_LINE(V_COL1 || V_COL2);
    --Exibindo um grudado no outro na mesma linha
    DBMS_OUTPUT.PUT_LINE(V_COL1 || ' ' || V_COL2);
    --Exibindo na mesma linha porem separados
END;


