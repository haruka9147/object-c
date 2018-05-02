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
    if(self.delegate && [self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]){
        if([self.delegate kitchenShouldUpgradeOrder:self]) {
            if([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc] initWithSize: Large AndToppings:toppings]];
                return [[Pizza alloc] initWithSize: Large AndToppings:toppings];
            }
        } else {
            if([self.delegate respondsToSelector: @selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:[[Pizza alloc] initWithSize: size AndToppings:toppings]];
                return [[Pizza alloc] initWithSize: size AndToppings:toppings];
            }
        }
    }
    return nil;
}

@end
