//
//  Box.h
//  Assignment2
//
//  Created by 北田晴佳 on 2018/04/17.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Box : NSObject
@property (nonatomic, assign) float height;
@property (nonatomic, assign) float width;
@property (nonatomic, assign) float length;

- (instancetype) initWithWidth: (float) w andHeight: (float) h andLength: (float) l;
- (float) volume;
- (float) ratio: (Box *) box;
@end
