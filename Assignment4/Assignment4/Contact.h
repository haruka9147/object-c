//
//  Contact.h
//  Assignment4
//
//  Created by 北田晴佳 on 2018/04/18.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
// TODO: bonus 4 - multiple phone numbers
@interface Contact : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *email;

- (instancetype)initWithName:(NSString *) name AndEmail:(NSString *) email;

@end
