//
//  main.m
//  Assignment13
//
//  Created by 北田晴佳 on 2018/05/02.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *input = @"Kale Chips";
        NSString *latin = [input stringByPigLatinization];
        NSLog(@"%@ becomes %@", input, latin);
    }
    return 0;
}
