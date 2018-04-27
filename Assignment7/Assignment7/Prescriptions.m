//
//  Prescriptions.m
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Prescriptions.h"

@implementation Prescriptions
- (instancetype)init
{
    self = [super init];
    if (self) {
        _prescriptions = [[NSMutableDictionary alloc] init];
        
    }
    return self;
}

//- (void) addPrescriptionToPatient: (Patient *) {
//    [_prescriptions setObject:<#(nonnull id)#> forKey:<#(nonnull id<NSCopying>)#>];
//}


@end
