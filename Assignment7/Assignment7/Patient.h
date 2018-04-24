//
//  Patient.h
//  Assignment7
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Patient : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) BOOL hasHelthCard;
@property (nonatomic, strong) NSString *symptom;

- (instancetype)initName: (NSString *) name withAge: (NSInteger) age hasHelthCard: (BOOL) hasHelthCard;
@end
