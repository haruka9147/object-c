//
//  ScoreKeeper.m
//  Assignment3
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper
- (instancetype)init
{
    self = [super init];
    if (self) {
        _right = 0;
        _wrong = 0;
    }
    return self;
}
-(void) displayResult{
    CGFloat percentage = (CGFloat) _right / (_right + _wrong) * 100;
    
    NSLog(@"score: %ld right , %ld wrong ------- %.2f%%", _right, _wrong, percentage);
}
@end
