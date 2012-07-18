

#import <Foundation/Foundation.h>
// importando a classe, somente o .h
#import "Fraction.h"



//criando uma classe chamada fabio
// NSObject é a classe principal no object-c // estamos cirando uma classe que herda dela

@interface Fabio : NSObject 
{
    int a;
}

-(void) setVariavel;

@end


@implementation Fabio

-(void) setVariavel
{
    a=200;
}

@end



//criando uma classe filha da classe Fabio(PAI)

@interface filhoDeFabio : Fabio 

-(void) imprimir;

@end


@implementation filhoDeFabio

-(void) imprimir
{
    NSLog(@"Imprimindo a variavel a que foi criada na classe pai: %i", a);
}

@end











int main5(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];

    //criando um objeto e inicializando o mesmo
    filhoDeFabio *objFilhoDeFabio = [[filhoDeFabio alloc] init];
    
    //aciando metodo que existe apenas no objeto PAI
    [objFilhoDeFabio setVariavel];
    
    //aciando metodo que existe apenas no objeto FILHO
    [objFilhoDeFabio imprimir];
    
    
    
    
    
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}

