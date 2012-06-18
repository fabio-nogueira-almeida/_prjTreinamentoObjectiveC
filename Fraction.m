//
//  Fraction.m
//  _prjTreinamentoObjectiveC
//
//  Created by Fábio Nogueira de Almeida on 18/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Fraction.h"

@implementation Fraction 

// systhesize irá criar automaticamente o get e o set quando o projeto for compilado
@synthesize numerador;
@synthesize denominador;

//criação de metodos
- (double)toDouble
{
    return numerador / (double)denominador;
}

- (void)print
{
    NSLog(@"Fração = %i / %i", numerador, denominador);
}

- (void)inserirNumerado:(int)n inserirDenominador:(int)d
{
    numerador = n;
    denominador = d;
}

-(void)multiply:(Fraction *)anotherFraction
{
    numerador *= anotherFraction.numerador; // pegando o get do atributo numerador do objeto Fraction do parametro
    denominador *= anotherFraction.denominador;
}


@end
