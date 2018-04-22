//
//  QuestionManager.h
//  Assignment5
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;
- (void) addQuestions: (Question *) question;
+ (QuestionManager *) manager;
- (NSString *)timeOutput;

@end
