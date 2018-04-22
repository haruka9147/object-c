//
//  Person.h
//  Assignment2
//
//  Created by 北田晴佳 on 2018/04/17.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject

// public property
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

- (id) initWith:(int) age WithName:(NSString *) name;
//- (int) getAge;
//- (NSString *) getName;
@end
