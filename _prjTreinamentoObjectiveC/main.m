//
//  main.m
//  _prjTreinamentoObjectiveC
//
//  Created by Fábio Nogueira de Almeida on 18/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
// importando a classe, somente o .h
#import "Fraction.h"

int main(int argc, const char * argv[])
{
    // alocando espaço na memoria
    NSAutoreleasePool * pool = [[NSAutoreleasePool alloc]init];
 
    // criando o objeto Fraction, alocando na memoria e iniciando
    Fraction *objFraction1 = [[Fraction alloc]init];
    Fraction *objFraction2 = [[Fraction alloc]init];
    
    // estou adicionando o valor 2 para o atributo numerado do objeto
    //obs: não foi preciso criar um metodo setNumerador, porque criei o property e o @synthesize
    objFraction1.numerador = 2;
    objFraction1.denominador = 3;
    
    // chamando o metodo e passando o parametro
    //para chamar precisa usar a sintaxe [ metodo ]    
    [objFraction2 inserirNumerado:6 inserirDenominador:8];
    
    [objFraction1 print];
    [objFraction2 print];
    
    // chamando metodo e passando um OBJETO como paramentro
    [objFraction1 multiply:objFraction2];
    [objFraction1 print];
    
    //escrevendo no console
    NSLog(@"objeto 1 * objeto 2 = %.g",[objFraction1 toDouble]);
    
    //Liberando memoria alocada para os objetos;
    [objFraction1 release];
    [objFraction2 release];
    
    // matando o espaço da memoria aberto
    [pool drain];
    return 0;
}

