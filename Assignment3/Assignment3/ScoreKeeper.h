//
//  ScoreKeeper.h
//  Assignment3
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject
@property (nonatomic, assign) NSInteger right;
@property (nonatomic, assign) NSInteger wrong;

-(void) displayResult;
- (instancetype)init;
@end
