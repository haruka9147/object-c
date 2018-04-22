//
//  QuestionFactory.m
//  Assignment5
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "QuestionFactory.h"
//#import "Question.h"
//#import "AdditionQuestion.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionTypes = @[@"AdditionQuestion",
                           @"SubstractionQuestion",
                           @"DivisionQuestion",
                           @"MultiplicationQuestion"];
    }
    return self;
}

- (Question *) generateRandomQuestion{
    //polymorphism
    //    Question *q = [[AdditionQuestion alloc] init];
    //    [q generateQuestion];
    int index = arc4random_uniform(4);
    NSString *questionType = [_questionTypes objectAtIndex:index];
    //using string to create instance of the class
    Question *q =[[NSClassFromString(questionType)alloc] init];
    return q;
    
}

@end
