
int main(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
    
    
    
    
    
    //EXEMPLO NSSTRING, NSNUMBER
    
    NSString * variavelString = @"Adicionando valor string na variavel string do obj-C";
    
    NSString * variavelStringTeste;
    
    NSLog(@"Primeira exibição: %@", variavelString); //%@ é para exibir o Objeto. O tipo OBJETO.
    
    NSLog(@"Exibindo a quantidade de caracteres: %lu", [variavelString length]); //exibe o total de caracteres
    
    variavelStringTeste = [NSString stringWithString:variavelString];
    
    NSLog(@" passando valor de uma variavel para a outra:  %@", variavelStringTeste);
    
    variavelStringTeste = [variavelString uppercaseString]; // colocando tudo em maisculo
    
    NSLog(@"Resultado todo em maisculo: %@", variavelStringTeste);
    
    
    
    
    
    
    
    //EXEMPLO de sub string
    
    variavelStringTeste = [variavelString substringToIndex:10]; // vai pegar até o caracter 10
    
    NSLog(@"Imprimindo usando o metodo substring: %@", variavelStringTeste);
    
    
    variavelStringTeste = [variavelString substringFromIndex:15]; // vai pegar a partir do 15
    
    NSLog(@"Imprimindo usando o metodo substring2: %@", variavelStringTeste);    
    
    
    
    
    
    
    
    
    
    //EXEMPLO range
    
    NSString * variavelRange = @"Testando a palavra, conceito e funcao range";
    
    NSRange objRange = [variavelRange rangeOfString:@"conceito"];
    NSLog(@"Pegando a posição da palavra 'variavel': %lu", objRange.location);
    NSLog(@"Comprimento da palavra 'variavel': %lu", objRange.length);

    
    
    
    
    
    
    
    
    
    
    
    
    //EXEMPLO NSNumber
    
    //criando objeto númerico
    //NSNUMBER é um objeto que recebe qualquer valor númerico. Ele recebe inteiro, floate, double.
    NSNumber * objNumerico = [NSNumber numberWithInt:120];
    
    NSLog(@"Exibindo número: %@", objNumerico); //%@ é para exibir o Objeto. O tipo OBJETO.
    
    
    
    
    
    
    
    
    // EXEMPLO de NSMutableString
    
    
    NSString * variavelMutable = @"Testando variavel NSMutable";
    NSMutableString * objNSMutable;
    
    objNSMutable = [NSMutableString stringWithString:variavelMutable]; //associando a variavel no obj mutable
    
    NSLog(@"imprimindo valor do obj Mutable: %@", objNSMutable);
    
 //   [objNSMutable insertString:@" e agora acrescentando" atIndex:28];
    
 //   NSLog(@"imprimindo valor do obj Mutable + a parte que acrescentou: %@", objNSMutable);
    
      [objNSMutable appendFormat:@" | adicionando string no final sem contar casas"]; 
    
      NSLog(@"Testando metodo: %@", objNSMutable);
    
    
    //metodo para deletar caracteres na string
    //apagando do 10 ao 15 caracter
    [objNSMutable deleteCharactersInRange:NSMakeRange(10, 15)];
    
    
    NSLog(@"Testando metodo de deletar: %@", objNSMutable);
    
    [objNSMutable setString:@"oi, eu sou uma nova string | o velho"];
    
    NSLog(@"Apresentando: %@", objNSMutable);

    [objNSMutable replaceCharactersInRange:NSMakeRange(4, 7) withString:@"fazendo um replace ? "]; // metodo para substituir um determinado texto
    
    NSLog(@"Apresentando com substituição: %@", objNSMutable);    
    
    NSString * antigo = @" o velho";
    NSString * novo = @"o novo usando replace";
    
    NSRange range = [objNSMutable rangeOfString:antigo];// pegango a posição do escrito antigo
    [objNSMutable replaceCharactersInRange:range withString:novo]; // substituindo o texto
    
    NSLog(@"Apresentando c/ substituição2: %@", objNSMutable);    


    
    // EXEMPLO de vetor - array
    
    //criando e iniciando um array com valores de carro
        // array começa com 0
        // sempre devemos colocar o nil no final, para o obj-C conhecer que é um array
    NSArray * carros = [NSArray arrayWithObjects:@"Astra", @"c3",@"Fusion",@"Scort",@"Corsa", nil];
    
        NSLog(@"Exemplo de array: %@",[carros objectAtIndex:1]);
    
  /*  for (int a=0; a<6; a++) {
        NSLog(@"Posição %i, Carro: %@", a, [carros objectAtIndex:a]);
    }
   */ 

    
    
    
    
    
    
    
    
    
    
    
    
    
    // EXEMPLO de vetor - NSMutableArray
    
    NSMutableArray * objMutableArray = [NSMutableArray arrayWithCapacity:20]; //caso o array passe desse limite, o proprio obj-c cria mais automaticamente. Não precisa se importar com o tamanho do array
    
    [objMutableArray addObject:[NSNumber numberWithInt:1]];
    
    //pegando apenas os números pares. Está contando 2 em 2
    for (int i=0; i<=100; i+=2) {
        [objMutableArray addObject:[NSNumber numberWithInt:i]];
    };
    
    
    //for para printar o resultado
    
    for (int b=0; b< [objMutableArray count]; b++) {
        NSLog(@"Imprimindo valores do array: %li", [[objMutableArray objectAtIndex:b] integerValue]); //acionamos dois metodos do obj mutableArray / metodo objectAtIndex e IntergerValue (converteu o valor resultado do metodo objectAtIndex em integer)
    };
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //EXEMPLO Dicionary
    
    
    
    NSMutableDictionary * objDicionario = [NSMutableDictionary dictionary]; // inicia com um dicionario
    
    [objDicionario setObject:@"Macarrao" forKey:@"Comida"];
    [objDicionario setObject:@"Ferrado" forKey:@"Carro"];
    [objDicionario setObject:@"Naruto" forKey:@"Anime"];
    
    NSLog(@"Imprimindo o valor do dicionar: %@", [objDicionario objectForKey:@"Anime"]);
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    [objNSMutable release];
    [variavelString release];
    [variavelStringTeste release];
    [variavelRange release];
    [objNumerico release];
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}

