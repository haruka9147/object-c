//
//  PaymentGateway.m
//  Assignment10
//
//  Created by 北田晴佳 on 2018/05/01.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

- (void) processPaymentAmount:(NSInteger *)amount
{
    if([self.delegate canProcessPayment]){
        [self.delegate processPaymentAmount:amount];
    }else{
        NSLog(@"I am sorry. Your payment cannot be processed at the amount");
    }
}

@end
