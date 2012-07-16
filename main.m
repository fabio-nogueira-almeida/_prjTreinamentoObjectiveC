#import <Foundation/Foundation.h>
#import "Pessoas.h"

int main4(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
    
    
    
    //EXEMPLO DE DECLARAÇÃO DE VARIAVEIS
    

    /* Forma complexa de iniciar um objeto
     
        // criando um objeto da classe Pessoas
        Pessoas * objPessoas;
     
        // alocando objeto na memoria
        objPessoas = [Pessoas alloc];
    
        //iniciando objeto criado
        objPessoas = [objPessoas init];
     */
    
    
    // Uma forma mais simplificada para allocar e iniciar um objeto
    Pessoas *objPessoaFabio = [[Pessoas alloc] init];
    Pessoas *objPessoaZe = [[Pessoas alloc] init];
    
    
    
    // acionando o metodo setIdade da classe Pessoas
    [objPessoaFabio setIdade:18];
    [objPessoaFabio setPeso:69];
    [objPessoaFabio imprimir];

    //chamando metodo que possui mais de um parametro
    [objPessoaZe setIdadePeso:11 :57];

    [objPessoaZe setIdade:12];
    [objPessoaZe setPeso:45];
    [objPessoaZe imprimir];
    
    //encapsulamento /  acessando a variavel pela classe main e não como um atributo do objeto
    NSLog(@"Fábio tem %i anos e pesa %i quilos", [objPessoaFabio idade], [objPessoaFabio peso]);
    
    
    
    
    //Utilizando o @property e o @systhesize
    objPessoaFabio.idade = 37;
    objPessoaZe.peso = 100;
    
    //Imprimindo os valores usando as variaveis que estão sendo usadas pelo @property e o @synthesize
    [objPessoaFabio imprimir];
    
    
    
    
    
    
    // liberando o objeto criado da memoria
    [objPessoaFabio release];
    [objPessoaZe release];
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}
