//
//  main.m
//  Assignment1
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

void menu() {
    NSLog(@"1. Uppercase");
    NSLog(@"2. Lowercase");
    NSLog(@"3. Numberize");
    NSLog(@"4. Canadianize");
    NSLog(@"5. Respond");
    NSLog(@"6. De-Space-It");
}

NSString * getUserInput(NSString *prompt) {
    char inputChars[255];
    NSLog(@"%@", prompt);
    //printf("Select the following option: ");
    fgets(inputChars, 255, stdin);
    //printf("Your string is %s\n", inputChars);
    NSString *inputString = [NSString stringWithUTF8String:inputChars];
    
    //NSLog(@"Input was: %@", inputString);
    
    return [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        // infinite loop
        while (YES) {
            menu();
            NSString *option = getUserInput(@"Select the following Option: ");
            NSString *userInput = getUserInput(@"Enter your string:");
            
            if([option isEqualToString:@"1"]) {
                NSLog(@"%@", [userInput uppercaseString]);
            } else if([option isEqualToString:@"2"]) {
                NSLog(@"%@", [userInput lowercaseString]);
            } else if([option isEqualToString:@"3"]) {
                NSScanner* scan = [NSScanner scannerWithString:userInput];
                int val;
                if([scan scanInt:&val] && [scan isAtEnd]){
                    NSNumberFormatter *f = [[NSNumberFormatter alloc] init];
                    f.numberStyle = NSNumberFormatterDecimalStyle;
                    NSNumber *myNumber = [f numberFromString:userInput];
                    NSLog(@"Convert to a number %@", myNumber);
                }
            }
            //NSLog(@"%@", input);
        }
    }
    return 0;
}

