//
//  Dice.h
//  Assignment6
//
//  Created by 北田晴佳 on 2018/04/20.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

- (instancetype)initWithValue: (NSInteger) value;
@property (nonatomic, assign) NSInteger value;//stroe value of dice
@property (nonatomic, assign) BOOL isHeld;
- (void) roll;
@end
