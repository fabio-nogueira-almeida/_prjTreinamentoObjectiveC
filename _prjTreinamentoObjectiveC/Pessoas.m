//
//  Pessoas.m
//  _prjTreinamentoObjectiveC
//
//  Created by Fábio Nogueira de Almeida on 14/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Pessoas.h"

@implementation Pessoas

-(void) imprimir{
    NSLog(@"Meu nome é Fábio, eu tenho %i anos e peso %i quilos",idade, peso);
}

-(void) setIdade:(int)i{

    idade=i;
    
}


-(void) setPeso:(int)p{

    peso=p;

}

// metodos usados para criar o capsulamento
-(int) idade
{
    return idade;
}

-(int) peso
{
    return peso;
}


-(void) setIdadePeso: (int) i : (int) p
{
    idade=i;
    peso=p;

}



@synthesize idade,peso;




@end
