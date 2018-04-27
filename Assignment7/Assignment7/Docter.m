//
//  Docter.m
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Docter.h"

@implementation Docter
- (instancetype)initName: (NSString *) name
{
    self = [super init];
    if (self) {
        _name = name;
        _patientArr = [[NSMutableArray alloc] init];
    
    }
    return self;
}

- (void) visit: (Patient *) patient
{
    if([patient hasHelthCard]) {
        [_patientArr addObject:patient];
    }
}

- (NSString *) requestMedication: (Patient *) patient
{
    return @"prescription";
}
- (NSString *)description
{
    return @"description";
}
@end
