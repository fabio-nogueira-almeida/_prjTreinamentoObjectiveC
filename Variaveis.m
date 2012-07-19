

#import "Variaveis.h"

@implementation Variaveis



-(void) setVar
{
    //informa que iremos utilizar uma variavel global
    extern int gVariavel;
    gVariavel = 12;
}



// crianto variavel static
//variaveis static são declaradas antes de sua implementação, as variaveis staticas só podem ser acessas a partir do seu metodo na implementação

static int x;




-(void) adicionar{
    
    x++;
}

-(void) imprimir{
    
    NSLog(@"imprimindo valor: %i", x);
    
}


@end
