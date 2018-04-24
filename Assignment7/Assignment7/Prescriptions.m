//
//  Prescriptions.m
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Prescriptions.h"

@implementation Prescriptions
- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescriptions = [[NSMutableArray alloc] init];
    }
    return self;
}
@end
