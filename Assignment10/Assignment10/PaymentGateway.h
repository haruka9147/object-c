//
//  PaymentGateway.h
//  Assignment10
//
//  Created by 北田晴佳 on 2018/05/01.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate
- (void) processPaymentAmount:(NSInteger *)amount;
- (BOOL) canProcessPayment;
@end


@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> delegate;

- (void) processPaymentAmount:(NSInteger *)amount;

@end
