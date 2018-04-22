//
//  main.m
//  Assignment2
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Person.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        // Person *p1 = [[Person alloc] init];
        //        Person *p1 = [[Person alloc] initWith:26 WithName:@"Miho"];
        //        int age = [p1 getAge];
        //        NSLog(@"%d", age);
        Box *box1 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:10];
        Box *box2 = [[Box alloc] initWithWidth:10 andHeight:10 andLength:1];
        NSLog(@"Volume of box1 is %.2f", [box1 volume]);
        NSLog(@"Box1 can fit %.2f Box2", [box1 ratio: box2]);
    }
    return 0;
}
