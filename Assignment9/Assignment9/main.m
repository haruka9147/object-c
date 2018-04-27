//
//  main.m
//  Assignment9
//
//  Created by 北田晴佳 on 2018/04/25.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "FoodTruck.h"
#import "Cook.h"
#import "Server.h"
//#import "Greeter.h"
//#import "FriendlyGreetingDecider.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        Greeter *greeter = [Greeter new];
//        FriendlyGreetingDecider *decider = [FriendlyGreetingDecider new];
//        greeter.delegate = decider;
//        
//        if([greeter askDelegate]) {
//            NSLog(@"FriendlyGreetingDecider said YES");
//        } else {
//            NSLog(@"FriendlyGreetingDecider said NO");
//        }
        
        FoodTruck *truckA = [[FoodTruck alloc] initWithName:@"Take a Bao" andFoodType:@"bao"];
        
        FoodTruck *truckB = [[FoodTruck alloc] initWithName:@"Tim Shortons" andFoodType:@"shortbread"];
        
        // create instances of your delegate class
        Cook *cook = [Cook new];
        Server *server = [Server new];
        // set truckA and truckB's delegate to your new instance.
        truckA.delegate = cook;
        truckB.delegate = server;
        
        [truckA serve:10];
        [truckB serve:5];
        
        [truckA cashOut];
        [truckB cashOut];
    }
    return 0;
}
