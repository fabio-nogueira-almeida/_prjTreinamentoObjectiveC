//
//  Fraction.h
//  _prjTreinamentoObjectiveC
//
//  Created by Fábio Nogueira de Almeida on 18/06/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Fraction : NSObject{
// criando váriaveis int
    int numerador; 
    int denominador;
}

// quando se cria uma property, ele faz o atributo virar automaticamente get e set
@property int numerador; 
@property int denominador;

//criando metodo
- (double)toDouble;
- (void)print;

//criando metodo com passagem de parametro
- (void)inserirNumerado:(int)numerador inserirDenominador:(int)denominador;

// criando metodo com passagem de parametro com OBJETO
- (void)multiply:(Fraction *)anotherFraction;
@end
