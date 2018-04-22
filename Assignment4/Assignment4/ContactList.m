//
//  ContactList.m
//  Assignment4
//
//  Created by 北田晴佳 on 2018/04/18.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList
- (instancetype)init
{
    self = [super init];
    if (self) {
        _contacts = [[NSMutableArray alloc] init];
        // _contacts = [NSMutableArray array];
        // NSArray *arr = @[@"Hello", @"World"];
        // [arr count]
        // @ -> object-c's object
    }
    return self;
}

- (void) addContact:(Contact *)newContact {
    [_contacts addObject: newContact];
}

- (BOOL) shouldHaveContactWith: (NSString *) keyword {
    for (Contact * contact in _contacts) {
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]) {
            return YES;
        }
    }
    return NO;
}

- (Contact *) findContact: (NSString *) keyword {
    for (Contact * contact in _contacts) {
        if ([[contact name] isEqualToString:keyword] || [[contact email] isEqualToString:keyword]) {
            return contact;
        }
    }
    return nil;
}
@end
