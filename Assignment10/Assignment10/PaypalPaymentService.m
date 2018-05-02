//
//  PaypalPaymentService.m
//  Assignment10
//
//  Created by 北田晴佳 on 2018/05/01.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService
- (void) processPaymentAmount:(NSInteger *)amount
{
    NSLog(@"Paypal process amout $%ld", amount);
}
- (BOOL) canProcessPayment
{
    return arc4random_uniform(2) == 1;
}
@end
