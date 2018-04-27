//
//  Greeter.h
//  Assignment9
//
//  Created by 北田晴佳 on 2018/04/25.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol GreeterDelegate

- (BOOL) shouldSayHello;

@end

@interface Greeter : NSObject

@property (nonatomic, weak) id<GreeterDelegate> delegate;
- (BOOL) askDelegate;
@end
