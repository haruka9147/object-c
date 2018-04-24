//
//  main.m
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Docter.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Docter *d1 = [[Docter alloc] initName: @"Docter1"];
        Patient *p1 = [[Patient alloc] initName:@"Patient1" withAge:23 hasHelthCard: YES];
        
        [d1 visit:p1];
        NSLog(@"Hello, World!");
    }
    return 0;
}
