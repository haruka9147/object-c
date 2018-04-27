//
//  FriendlyGreetingDecider.m
//  Assignment9
//
//  Created by 北田晴佳 on 2018/04/25.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "FriendlyGreetingDecider.h"

@implementation FriendlyGreetingDecider
- (BOOL) shouldSayHello{
    if(arc4random_uniform(2) % 2 == 0) {
        return YES;
    } else {
        return NO;
    }
}
@end
