#import <Foundation/Foundation.h>


int main3(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];

    
    
    //EXEMPLO DE DECLARAÇÃO DE VARIAVEIS

    // criando varivel do tipo int e atrivuindo valor
    int idade = 20;
    int peso = 94;
    int altura = 173;
    float varFloat =32-45;
    char varChar = 'C';
    
    //imprimindo os valores
    NSLog(@"Felipe tem %d anos, peso %d e quilos e mede %d", idade, peso, altura);
    NSLog(@"=============================");
    
    //No object-C também podemos printar a variavel inteira da seguinte forma
    NSLog(@"Felipe tem %i anos, peso %i e quilos e mede %i", idade, peso, altura);
    NSLog(@"=============================");
    
    //imprimindo valores
    NSLog(@"Imprimindo valores FLOAT E CHAR");    
    NSLog(@"%2f", varFloat);
    NSLog(@"%c", varChar);
    NSLog(@"=============================");    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // EXEMPLO DE ESTRUTURA FOR
    
    NSLog(@"=============================");
    
    int i;
    for (i=0; i<10; i++) {
        NSLog(@" Valor da variavel contadora i:  %i",i);
    }
    
    NSLog(@"=============================");    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // EXEMPLO DA FUNÇÃO SCAN F
    
    
    int i2, varUsuario;
    NSLog(@"=============================");
    NSLog(@"Digite o número de repetição para a estrutuda do for:");
    scanf("%i",&varUsuario); //associando o valor que o usuario digitou na variavel varUsuario
    
    for (i2 = 0; i2 <= varUsuario; i2++) {
        NSLog(@"Valor da estrutura com o tamanho de acordo com o que o usuario inseriu: %i",i2);
    }
    NSLog(@"=============================");
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // EXEMPLO DE FOR DENTRO DE FOR
    
    
    int varUsuario2;
    for (int a=0; a<=2; a++) { //criando a varivel contadore dentro do proprio FOR
        NSLog(@"Digite um número e eu vou repetir a mesma quantidade de vezes");
        scanf("%i", &varUsuario2);
       
        NSLog(@"=============================");
        
        for (int b=0; b<=varUsuario; b++) {
            NSLog(@"Informando valor: %i", varUsuario2);
        }
    
        NSLog(@"=============================");
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //EXEMPLO DA ESTRUTURA WHILE

    NSLog(@"=============================");
    
    int a=0;
    
    while (a<=10) {
        NSLog(@"Mostrando valor do While: %i", a);
        a++;
    }
    
    NSLog(@"=============================");    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //EXEMPLO DA ESTRUTURA DO WHILE
    
    NSLog(@"=============================");
    
    int ab=0;
    
    do {
        
        NSLog(@"Valor da variavel contadora do DOWHILE: %i",ab);
        ab++;
        
    } while (ab<=5);
    
    NSLog(@"=============================");    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //EXEMPLO DA ESTRUTUR IF E ELSE
   
    NSLog(@"=============================");    
    
    int pessoaMasculina = 47, pessoaFeminina = 67;
    
    if (pessoaMasculina > pessoaFeminina) { // outros operadores &&, ||, nil
        NSLog(@"O homen é mais velho que a mulher.");
    }else {
        NSLog(@"O mulher é mais velha comparado com o homen");
    }
    
    NSLog(@"=============================");    
    
    
    
    //EXEMPLO DE SWITCH

    NSLog(@"=============================");    
    int varSwitch;
    
    NSLog(@"Digite 1 para carro com duas portas");
    NSLog(@"Digite 2 para carro com Quatro portas");    
    NSLog(@"Digite 3 para caminhões");

    scanf("%i",&varSwitch);
    
    
    switch (varSwitch) { 
        case 1:
           NSLog(@"Você escolheu carro com 2 portas");
            break;
        case 2:
            NSLog(@"Você escolheu o carro com 4 portas");
            break;
        case 3:
            NSLog(@"Caminhão");
            break;
        default:
            break;
    }
    
    NSLog(@"=============================");    
    

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //OPERADORES CONDICIONAIS

    NSLog(@"=============================");    
    int a2=3, b2=2, c2=0;
    
    //if em forma de uma linha. Lado esquerdo e o valor verdadeiro e o lado direito é o falso
    
    
    // a2 é igual a b2 ? se for, ele imprimir o texto "verdadeiro", se não ele imprime "falso"
    a2==b2 ? NSLog(@"verdade") : NSLog(@"falso");

    //Verificando se a variavel c2 é verdade. Em codigo binario, 0 é falso e 1 é verdadeiro. 
    c2 ? NSLog(@"verdade") : NSLog(@"falso");     

    NSLog(@"=============================");    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}
