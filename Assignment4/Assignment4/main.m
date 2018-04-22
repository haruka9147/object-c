//
//  main.m
//  Assignment4
//
//  Created by 北田晴佳 on 2018/04/22.
//  Copyright © 2018 com.Haruka. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *menu = @"What would you like to do next?\nnew - Create a new contact\nlist - List all contacts\nquit - Exit Application\n>>> ";
        ContactList *list = [[ContactList alloc] init];
        // REPL : Read Evaluate Print Loop
        BOOL isOn = YES;
        while (isOn) {
            NSString *input = [InputHandler getUserInputWithPrompt: menu];
            NSArray *splitted = [input componentsSeparatedByString:@" "];
            if ([input isEqualToString:@"quit"]) {
                isOn = NO;
                break;
            } else if ([input isEqualToString:@"new"]) {
                NSString *name = [InputHandler getUserInputWithPrompt: @"\nEnter the name: "];
                NSString *email = [InputHandler getUserInputWithPrompt: @"\nEnter the email: "];
                // TODO: bonus 3 - prevent duplicate
                BOOL nameExists = [list shouldHaveContactWith:name];
                BOOL emailExists = [list shouldHaveContactWith:email];
                if(!nameExists && !emailExists) {
                    Contact *newContact = [[Contact alloc] initWithName: name AndEmail: email];
                    [list addContact: newContact];
                } else {
                    NSLog(@"Contact info already exists....");
                }
                
            } else if ([input isEqualToString:@"list"]) {
                // print all contacts in ContactList mutableArray
                NSInteger index = 0;
                NSMutableArray *contacts = [list contacts];
                // loop contacts print one by one.
                for (Contact *contact in contacts) {
                    NSLog(@"%ld: <%@> (%@)", index, [contact name], [contact email]);
                    index++;
                }
            } else if ([[splitted objectAtIndex:0] isEqualToString:@"show"]) {
                // TODO: bonus 1 - show
                NSString *index = [splitted objectAtIndex:1];
                NSMutableArray *contacts = [list contacts];
                NSInteger i = [index integerValue];
                if(i >= [contacts count] || i < 0) {
                    NSLog(@"Not found");
                } else {
                    Contact *contact = [contacts objectAtIndex:i];
                    NSLog(@"<%@> (%@)", [contact name], [contact email]);
                }
            } else if ([[splitted objectAtIndex:0] isEqualToString:@"find"]) {
                //                NSMutableArray *contacts = [list contacts];
                //                NSString *compare = [splitted objectAtIndex:1];
                //                BOOL isExist = NO;
                //                for (Contact *contact in contacts) {
                //                    if([[contact name] isEqualToString: compare] || [[contact email] isEqualToString: compare]) {
                //                        NSLog(@"<%@> (%@)", [contact name], [contact email]);
                //                        isExist = YES;
                //                        break;
                //                    }
                //                }
                //                if(!isExist) {
                //                    NSLog(@"Not found!");
                //                }
                NSString *compare = [splitted objectAtIndex:1];
                Contact *found = [list findContact:compare];
                if(found != nil) {
                    NSLog(@"<%@> (%@)", [found name], [found email]);
                } else {
                    NSLog(@"Not found!");
                }
                // TODO: bonus 2 - find
            } else if ([[splitted objectAtIndex:0] isEqualToString:@"history"]) {
            }
        }
        
    }
    return 0;
}
