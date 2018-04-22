//
//  Person.m
//  Assignment2
//
//  Created by 北田晴佳 on 2018/04/17.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Person.h"

//private property

//@interface Person ()
//@property (nonatomic, strong) NSString *name;
//@property (nonatomic, assign) NSInteger age; // use 4 bite every computer
//@end

@implementation Person
//{
//    int _age;
//    NSString *_name;
//}

- (id) initWith:(int) age WithName:(NSString *) name { // - instance, + static
    self = [super init];
    if (self) {
        _age = age; // private instance variable
        _name = name;
    }
    return self;
}

//- (int) getAge {
//    return _age;
//}
//
//- (NSString *) getName {
//    return _name;
//}

@end
