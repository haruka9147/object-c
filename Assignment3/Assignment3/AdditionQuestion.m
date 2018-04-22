//
//  AdditionQuestion.m
//  Assignment3
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion
- (instancetype)init
{
    self = [super init];
    if (self) {
        //get 2 randam numbers
        //(8 - 98) + 10 == 10 -99
        int num1 = arc4random_uniform(98) + 10;
        int num2 = arc4random_uniform(91) + 10;
        
        //@"first + second"
        _question =[NSString stringWithFormat: @"%d + %d", num1, num2];
        _answer = num1 + num2;
        
    }
    return self;
}
@end
