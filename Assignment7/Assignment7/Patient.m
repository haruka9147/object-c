//
//  Patient.m
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Patient.h"

@implementation Patient
- (instancetype)initName: (NSString *) name withAge: (NSInteger) age hasHelthCard: (BOOL) hasHelthCard
{
    self = [super init];
    if (self) {
        _name = name;
        _age = age;
        _hasHelthCard = hasHelthCard;
        _symptom = @"";
    }
    return self;
}
@end
