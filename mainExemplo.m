
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
    
    
    
    
    
    
    
    //exemplo de sub string
    
    variavelStringTeste = [variavelString substringToIndex:10]; // vai pegar até o caracter 10
    
    NSLog(@"Imprimindo usando o metodo substring: %@", variavelStringTeste);
    
    
    variavelStringTeste = [variavelString substringFromIndex:15]; // vai pegar a partir do 15
    
    NSLog(@"Imprimindo usando o metodo substring2: %@", variavelStringTeste);    
    
    
    
    
    
    
    
    
    
    //exemplo range
    
    NSString * variavelRange = @"Testando a palavra, conceito e funcao range";
    
    NSRange objRange = [variavelRange rangeOfString:@"conceito"];
    NSLog(@"Pegando a posição da palavra 'variavel': %lu", objRange.location);
    NSLog(@"Comprimento da palavra 'variavel': %lu", objRange.length);

    
    
    
    
    
    
    
    
    
    
    
    
    //exemplo NSNumber
    
    //criando objeto númerico
    //NSNUMBER é um objeto que recebe qualquer valor númerico. Ele recebe inteiro, floate, double.
    NSNumber * objNumerico = [NSNumber numberWithInt:120];
    
    NSLog(@"Exibindo número: %@", objNumerico); //%@ é para exibir o Objeto. O tipo OBJETO.
    
    
    
    
    
    
    
    
    // exemplo de NSMutableString
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


    
    
    
    
    
    
    
    [objNSMutable release];
    [variavelString release];
    [variavelStringTeste release];
    [variavelRange release];
    [objNumerico release];
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}

