/* Com o Case podemos criar condições que serão verificadas e caso seja atendida ela interrompe a verificação e retorna o resultado */
/* Pode-se criar um retorno caso nenhuma codição seja atendida com o Else, ou no caso de não ser definido o retorno será null */

SELECT *
CASE
    WHEN condição_1 = valor THEN 'retorno_1'
    WHEN condição_2 = valor THEN 'retorno_2'
    ELSE 'retorno_se_tudo_falso'
END 
FROM nome_tabela;