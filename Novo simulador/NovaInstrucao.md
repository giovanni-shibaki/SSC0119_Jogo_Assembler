# Modificar o Montador para incluir uma nova INSTRUCAO

- Para incluir uma nova Instrução no Montador, deve-se modificar 2 arquivos: montador.c e defs.h

### defs.h

```c
// Para incluir uma nova INSTRUCAO, e' necessario mexer em 3 lugares diferentes:
// Definir o Codigo da Instrucao: 
  #define LOAD_CODE  1
// Definir os Bits da Instrucao: 
  #define LOAD       "110000"
// Definir a String de como a Instrucao deve aparecer no programa ASM:
  #define LOAD_STR   "LOAD"
```

### montador.c

```c
// Para incluir uma nova INSTRUCAO, e' necessario mexer em 3 lugares diferentes:
// 1) Definir os separadores da Instrucao e quantas linhas do EXE (mif) ela necessita:
        case LOAD_CODE :
        case STORE_CODE :
        case LOADIMED_CODE :
        case STOREIMED_CODE :
            parser_SkipUntil(','); 
            parser_SkipUntilEnd(); 
            end_cnt+=2; 
            break;

// 2) Explicar como o Montador vai montar os BITs da Instrucao e escrever no arquivo:
        case LOAD_CODE : // Load R1, End
            str_tmp1 = parser_GetItem_s();
            val1 = BuscaRegistrador(str_tmp1);
            free(str_tmp1);
            parser_Match(',');
            val2 = RecebeEndereco();
            str_tmp1 = ConverteRegistrador(val1);
            str_tmp2 = NumPBinString(val2);
            sprintf(str_msg,"%s%s0000000",LOAD,str_tmp1);
            parser_Write_Inst(str_msg,end_cnt);
            end_cnt += 1;
            sprintf(str_msg,"%s",str_tmp2);
            parser_Write_Inst(str_msg,end_cnt);
            end_cnt +=1;
            free(str_tmp1);
            free(str_tmp2);
        break;

// 3) Buscar o nome da instrucao na base de instrucoes e retornar 'op_code interno' da instrucao:
      if (strcmp(str_tmp,LOAD_STR) == 0)
        {
            return LOAD_CODE;
        }
    
```
