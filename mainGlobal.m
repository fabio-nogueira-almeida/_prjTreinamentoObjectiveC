
#import <Foundation/Foundation.h>
#import "Variaveis.h"
#import "category.h"

//criando variavel global

int gVariavel = 20;

int mainGlobal(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
    
   
    
    
    NSLog(@"valor da variavel global: %i", gVariavel);
    
    //criando ponteiro para acessar o metodo da classe variaveis
    
    Variaveis * objVariavel = [[Variaveis alloc] init];
    
    [objVariavel setVar];

    NSLog(@"Novo valor da variavel global: %i", gVariavel);
    
    [objVariavel release];
    


    
    
    //exemplo da variavel estatica

    Variaveis * objVariavel2 = [[Variaveis alloc] init];
    
    [objVariavel2 adicionar];
    [objVariavel2 imprimir];
    
    [objVariavel2 release];

    
    //criando o seu tipo de dado
    
    // criei o tipo da variavel e agora estou associando quais valores que ela vai aceitar
    //
    
    enum variavelTipoSEU {j=1,f,m,a}; // o xcode associa o restante dos valores automaticamente. EX: f = 2, m = 3, a = 4
    
    //criando uma variavel do tipo de dados que criei
    
    enum    variavelTipoSEU variavelEntrada;
    
    //pegando informacao do usuario
    NSLog(@"Digite o número do mes:");
    scanf("%i", &variavelEntrada);
    
    //verificando se o usuario digitou correto e envia o mes
    //o usuario vai digitar o numero e iremos mostrar o mes de acordo com o tipo da variavel
    switch (variavelEntrada) {
        case j:
            NSLog(@"JANEIRO");
            break;
        case f:
            NSLog(@"fevereiro");
            break;

        case m:
            NSLog(@"março");
            break;

        case a:
            NSLog(@"abril");
            break;

        default:
            NSLog(@"Valor nao existe");
            break;
    }
    
    
    
    
    
    //exemplo de CATEGORY
    
    
    Variaveis * objVariaveisCategory = [[Variaveis alloc] init];
    
    [objVariaveisCategory adicionar];
    [objVariaveisCategory multiplicar:3 :4];
    
    [objVariaveisCategory release];
    
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}
