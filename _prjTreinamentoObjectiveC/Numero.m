
#import "Numero.h"

@implementation Numero


-(void) setnum: (int) a :(int) b
{
    num1 = a;
    num2 = b;
}

-(void) add
{
    resposta = num1+num2;
}


-(void) imprimir
{

    NSLog(@"Eu sou da classe de numeros: %i", resposta);

}

@end
