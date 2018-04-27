//
//  Greeter.m
//  Assignment9
//
//  Created by 北田晴佳 on 2018/04/25.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Greeter.h"

@implementation Greeter

- (BOOL) askDelegate {
    return [self.delegate shouldSayHello];
}

@end
