//
//  Cook.m
//  Assignment9
//
//  Created by 北田晴佳 on 2018/04/25.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Cook.h"

@implementation Cook

-(double)foodTruck:(FoodTruck *)truck priceForFood:(NSString *)food {
    if([food isEqualToString:@"salad"]) {
        return 5.0;
    } else if ([food isEqualToString:@"beef"]) {
        return 10.0;
    } else if ([food isEqualToString:@"bao"]) {
        return 8.5;
    } else if ([food isEqualToString:@"shortbread"]) {
        return 8.7;
    }
    return 7.0;
}

@end
