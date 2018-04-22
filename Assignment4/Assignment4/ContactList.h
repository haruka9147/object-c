//
//  ContactList.h
//  Assignment4
//
//  Created by 北田晴佳 on 2018/04/18.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
//@class Contact;
#import "Contact.h"

@interface ContactList : NSObject
@property (nonatomic, strong) NSMutableArray *contacts;
-(void)addContact:(Contact *)newContact;
- (BOOL) shouldHaveContactWith: (NSString *) keyword;
- (Contact *) findContact: (NSString *) keyword;
@end
