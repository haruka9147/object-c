//
//  QuestionFactory.h
//  Assignment5
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Question;

@interface QuestionFactory : NSObject

@property (nonatomic, assign) NSArray *questionTypes;
- (Question *) generateRandomQuestion;

@end
