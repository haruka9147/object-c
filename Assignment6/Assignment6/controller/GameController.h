//
//  GameController.h
//  Assignment6
//
//  Created by 北田晴佳 on 2018/04/20.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameController : NSObject
@property (nonatomic, strong) NSMutableArray <Dice *>*dice;
@property (nonatomic, assign) NSInteger MAX_ROLL;

- (void) holdDice: (NSInteger) dieNumber;
- (void) displayDice;
- (void) rollTheRest;


@end

