//
//  main.m
//  Assignment6
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"
#import "InputHandler.h"
#import "GameController.h"

void roll(){
    
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //        NSString *str = @"⚀⚁⚂⚃⚄⚅";//control + command +space
        
        
        GameController *player = [[GameController alloc] init];
        while ([player MAX_ROLL] > 0) {
            NSString *input = [InputHandler getUserInput:@"Enter 'roll' to roll the dice: "];
            if ([input isEqualToString:@"roll"]) {
                [player rollTheRest];
                while (YES) {
                    NSString *hold = [InputHandler getUserInput:@"Enter number to hold a die or 'q' to quit: "];
                    if ([hold isEqualToString:@"q"]) {
                        break;
                    }
                    [player holdDice: [hold integerValue]];
                }
                
            }else{
                break;
            }
        }
        [player displayDice];
    }
    return 0;
}
