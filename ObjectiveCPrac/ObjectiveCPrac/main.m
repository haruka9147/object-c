//
//  main.m
//  ObjectiveCPrac
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Practice.h"
// 1. Data Types
// 2. Variables (static type)
// 3. Flow Controls
//    - if else
//    - loop

int addTwo(int a, int b) {
    return a + b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool{
        //int result = addTwo(10, 20);
        //int result = [Practice addNumber:10 withAnotherNumber:20];
        int x = 10;
        if(x >= 10) {
            NSLog(@"x is greater than 10");
        } else if (x < 10 && x > 5) {
            NSLog(@"5 < x < 10");
        } else {
            NSLog(@"5 < x < 10");
        }
        NSString *objString = @"This is Obj-C String";
        NSLog(@"%@\n", objString);
    }
    return 0;
}
