//
//  main.m
//  Assignment8
//
//  Created by 北田晴佳 on 2018/04/24.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"
#import "InputHandler.h"
#import "Pizza.h"
#import "CheeryManager.h"
#import "AnchovyManager.h"

int main(int argc, const char * argv[])
{
    
    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new]; // alloc init
        AnchovyManager *anchoManager = [AnchovyManager new];
        CheeryManager *cheerManager = [CheeryManager new];
        
        while (TRUE) {
            NSString *inputString = [InputHandler getUserInput:@"> "];
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            // "large ham pineapple cheese"
            NSString *size = commandWords[0]; // size
            NSArray *toppings = [commandWords subarrayWithRange:NSMakeRange(1, [commandWords count] - 1)];
            
            NSString *chooseManager = [InputHandler getUserInput:@"Pick a manager:\n 1. Anchovy Manager.\n 2. Cheerful Manager\n"];
            
            if([chooseManager isEqualToString:@"1"]) {
                restaurantKitchen.delegate = anchoManager;
            } else {
                restaurantKitchen.delegate = cheerManager;
            }
            
            Pizza *pizza;
            pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings];
//            if(([Pizza getPizzaSize:size] == Large) && ([toppings containsObject:@"pepperoni"])) {
//                pizza = [Pizza largePepperoni];
//            } else if ([toppings containsObject:@"beef"] || [toppings containsObject:@"chicken"] || [toppings containsObject:@"pork"]) {
//                pizza = [Pizza meatLoverWithSize: [Pizza getPizzaSize: size]];
//            } else {
//                pizza = [restaurantKitchen makePizzaWithSize:[Pizza getPizzaSize:size] toppings:toppings];
//            }
            NSLog(@"%@", pizza);
        }
        
    }
    return 0;
}

