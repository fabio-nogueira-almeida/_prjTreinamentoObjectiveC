
#import <Foundation/Foundation.h>
#import "Numero.h"
#import "Caracter.h"

int mainPoli(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
    
    //Criando objetos(ponteiro)
    Numero * objNumero = [[Numero alloc] init];
    Caracter * objCaracter = [[Caracter alloc] init];
    
    //chamando os metodos dos objetos
    [objNumero setnum:8 :23];
    [objNumero add];
    [objNumero imprimir];
    
    [objCaracter setChar];
    [objCaracter add];
    [objCaracter imprimir];
    
    
    
    //desalocando da memoria
   // [objNumero release];
   // [objCaracter release];
    
    
    
    
    
    
    
    
    //Exemplo da variavel tipo ID
    
    
    
    // Criando uma variavel do tipo ID
    
    
    // OBS: o tipo ID pode receber todo o tipo de dados. Tanto uma int, float até mesmo a instancia de uma classe.
    
    
    id variavelID; //criando uma variavel do tipo ID
    
    variavelID = objNumero; // atribuindo uma instancia do objeto Numero na variavel
    
    [variavelID imprimir]; // executando o metodo que foi passado para a variavelID junto com o objeto da determinada classe
    
    
    variavelID = objCaracter;
    
    [variavelID imprimir];
    
    
    
    
    
    
    
    
    
    // Exemplo de exceção
    
    
    
    @try {
        
        [objNumero imprimir];
        
    }
    @catch (NSException *exception) {
        NSLog(@"=============================");
        NSLog(@"ERRO NA UTILIZAÇÃO DO METODO.");
        NSLog(@"==============================");
    };
    
    
    
    
    
    
    
    
    
    
    
    
    
    [variavelID release];
    
    //desalocando da memoria
    [objNumero release];
    [objCaracter release];
    
    
    
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}
