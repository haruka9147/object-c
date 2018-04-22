//
//  Box.m
//  Assignment2
//
//  Created by 北田晴佳 on 2018/04/17.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import "Box.h"
@implementation Box
// return type (instancetype) | (id)
// initWithWidth -> function name
- (instancetype) initWithWidth: (float) w andHeight: (float) h andLength: (float) l {
    self = [super init];
    if(self) {
        _width = w;
        _height = h;
        _length = l;
    }
    return self;
}

- (float) volume {
    // this.width == _width
    // this.getWidth == self.width or [self width]
    return _width * _height * _length;
}

- (float) ratio: (Box *) box {
    return [self volume] / [box volume];
}
@end
