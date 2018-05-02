//
//  Kitchen.m
//  Assignment11
//
//  Created by 北田晴佳 on 2018/05/01.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Kitchen.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings
{
    return [[Pizza alloc] initWithSize:size AndToppings: toppings];
}

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    
}

- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    
}

- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    
}

@end
