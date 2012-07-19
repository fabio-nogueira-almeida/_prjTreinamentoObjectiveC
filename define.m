#import <Foundation/Foundation.h>

//criando o define

#define z 24
#define x 2
#define y 2+x+z

#define IGUAL ==  
#define SOMA +
#define DIFERENTE !=
//se o valor que estiver como parametro (x), se esse numero divido por 2 for = 0, então é par
#define PAR(x) x%2==0 

int main(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];

    
    //imprimindo valores do define
    NSLog(@"Imprimindo valores de define: %i", x+z);
    NSLog(@"%i", y);
    
    NSLog(@"%i", y);
    
    if (x IGUAL y) {
        NSLog(@"Demonstrando um define de igual");
    } else if (x DIFERENTE y) {
        NSLog(@"Demonstrando um define de diferente");
    }
    
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}
