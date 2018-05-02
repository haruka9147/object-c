//
//  StripePaymentService.m
//  Assignment10
//
//  Created by 北田晴佳 on 2018/05/01.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "StripePaymentService.h"

@implementation StripePaymentService
- (void) processPaymentAmount:(NSInteger *)amount
{
    NSLog(@"Stripe process amout $%ld", amount);
}

- (BOOL) canProcessPayment
{
    return arc4random_uniform(2) == 1;
}
@end
