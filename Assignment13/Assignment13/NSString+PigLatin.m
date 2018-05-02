//
//  NSString+PigLatin.m
//  Assignment13
//
//  Created by 北田晴佳 on 2018/05/02.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)
-(NSString *)stringByPigLatinization
{
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aiueoAIUEO"];
    NSArray *clusters =@[@"sc",@"ng",@"ch",@"ck",@"gh",@"ph",@"rh",@"sh",@"th",@"wh",@"zh",@"wr",@"kn"];
    NSMutableArray *result = [NSMutableArray new];
    NSArray *words = [self componentsSeparatedByString:@" "];
    
    for (NSString *word in words) {
        if([clusters containsObject:[word substringToIndex:2]]) {
            NSString *pig = [NSString stringWithFormat:@"%@%@ay",
                             [word substringFromIndex:2],
                             [word substringToIndex:2]];
            [result addObject:[[pig lowercaseString] capitalizedString]];
        } else if (![vowels characterIsMember:[word characterAtIndex:0]]) {
            NSString *pig = [NSString stringWithFormat:@"%@%cay",
                             [word substringFromIndex:1],
                             [word characterAtIndex:0]];
            [result addObject:[[pig lowercaseString] capitalizedString]];
        } else {
            NSString *pig = [NSString stringWithFormat:@"%@ay", word];
            [result addObject:[[pig lowercaseString] capitalizedString]];
        }
    }
    
    return [result componentsJoinedByString:@" "];
}
@end
