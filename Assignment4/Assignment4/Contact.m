//
//  Contact.m
//  Assignment4
//
//  Created by 北田晴佳 on 2018/04/18.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Contact.h"

@implementation Contact
- (instancetype) initWithName:(NSString *) name AndEmail:(NSString *) email {
    self = [super init];
    if (self) {
        _name = name;
        _email = email;
    }
    return self;
}
@end
