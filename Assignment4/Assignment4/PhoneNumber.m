//
//  PhoneNumber.m
//  Assignment4
//
//  Created by 北田晴佳 on 2018/04/18.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "PhoneNumber.h"

@implementation PhoneNumber
- (instancetype)initWithLabel: (NSString *) label AndWithDigit: (NSInteger *) digit
{
    self = [super init];
    if (self) {
        _label = label;
        _digit = digit;
    }
    return self;
}
@end
