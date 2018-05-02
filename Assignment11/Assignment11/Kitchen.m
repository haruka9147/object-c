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

@end
