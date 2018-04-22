//
//  Scorekeeper.h
//  Assignment5
//
//  Created by 北田晴佳 on 2018/04/21.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
//unsighed int - only postivitve;

@interface Scorekeeper : NSObject
@property (nonatomic, assign) NSInteger rights;
@property (nonatomic, assign) NSInteger wrongs;
-(instancetype) init;

- (void) displayResult;

@end
