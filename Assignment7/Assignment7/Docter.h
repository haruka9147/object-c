//
//  Docter.h
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"
#import "Prescriptions.h"

@interface Docter : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) Prescriptions *prescriptions;

- (instancetype)initName: (NSString *) name;
- (void) visit: (Patient *) patient;
@end
