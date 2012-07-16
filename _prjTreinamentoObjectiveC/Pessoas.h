//
//  Pessoas.h
//  _prjTreinamentoObjectiveC
//
//  Created by Fábio Nogueira de Almeida on 14/07/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pessoas : NSObject
{

    int idade;
    int peso;

}
-(void) imprimir;
-(void) setIdade: (int) i;
-(void) setPeso: (int) p;
//criando metodo com mais de um parametro
-(void) setIdadePeso: (int) i : (int) p;


//@property e @synthesize tem a mesma função do get e o set do java.
    //Com eles, podemos setar um buscar um valor de variavel do objeto penas utilizando a seguinte notação: objeto.atributo = novo_valor;
@property int idade, peso;




// metodos usados para criar o capsulamento
-(int) idade;
-(int) peso;
@end
