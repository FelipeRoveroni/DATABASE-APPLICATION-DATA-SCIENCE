SET SERVEROUTPUT ON

Declare
    v_sal_atual_number(10,2) :=1212.00;
    v_sal_reaj_number(10,2);
Begin
    v_sal_reaj :=v_sal_atual*1.25;
    dbms_output.put_line('Salário atual - R$:'||v_sal_atual);
    dbms_output.put_line('Salário Reajustado - R$'||v_sal_reaj);
end;

Declare
    v_atu number :=0;
Begin  
    for x in 1..10 loop
insert tabela() values ();

commit;
end loop;
end;
