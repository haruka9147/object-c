//
//  Pizza.h
//  Assignment11
//
//  Created by 北田晴佳 on 2018/05/01.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum : NSUInteger{
    Small,
    Medium,
    Large
} PizzaSize;

@interface Pizza : NSObject

@property (nonatomic, strong) NSArray *toppings;
@property (nonatomic, assign) PizzaSize size;

- (instancetype)initWithSize:(PizzaSize) size AndToppings: (NSArray *) toppings;
+ (Pizza *) largePepperoni;
+ (Pizza *) meatLoverWithSize: (PizzaSize) size;
+ (PizzaSize) getPizzaSize: (NSString *) size;

@end
