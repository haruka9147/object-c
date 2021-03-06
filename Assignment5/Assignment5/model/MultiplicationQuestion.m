//
//  MultiplicationQuestion.m
//  Assignment5
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "MultiplicationQuestion.h"

@implementation MultiplicationQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

- (void) generateQuestion{//overriding the superclass
    [super setQuestion:[NSString stringWithFormat:@"%ld x %ld = ", [super leftValue], [super rightValue]]];
    [super setAnswer: ([super leftValue] * [super rightValue])];
}

@end
