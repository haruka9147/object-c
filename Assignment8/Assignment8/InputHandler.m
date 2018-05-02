//
//  InputHandler.m
//  Assignment3
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

+(NSString *) getUserInput:(NSString *) prompt {
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    NSString *inputString = [NSString stringWithUTF8String: inputChars];
    NSCharacterSet *removeChaset = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    NSString *trimmedString  = [inputString stringByTrimmingCharactersInSet: removeChaset];
    return trimmedString;
}
@end
