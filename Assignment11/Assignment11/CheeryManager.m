//
//  CheeryManager.m
//  Assignment11
//
//  Created by 北田晴佳 on 2018/05/02.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "CheeryManager.h"

@implementation CheeryManager
- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    return YES;
}
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen
{
    return YES;
}
- (void)kitchenDidMakePizza:(Pizza *)pizza
{
    NSLog(@"Nice Pizza!");
}
@end
