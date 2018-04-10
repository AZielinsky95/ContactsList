//
//  ContactList.h
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Contact.h"
@interface ContactList : NSObject

@property (nonatomic) NSMutableArray* m_ContactList;

-(void)addContact:(Contact *)newContact;

-(void)listContacts;

-(void)showContact:(int)indexNum;

-(void)findContact:(NSString *)name;

@end
