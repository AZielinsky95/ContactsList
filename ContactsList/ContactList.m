//
//  ContactList.m
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "ContactList.h"

@implementation ContactList

-(instancetype)init
{
    if (self = [super init])
    {
        _m_ContactList = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)addContact:(Contact *)newContact
{
    bool isDuplicate = false;
    
    for(Contact *c in _m_ContactList)
    {
        if([c.m_Email isEqualToString:(newContact.m_Email)])
        {
            isDuplicate = true;
        }
    }

    if(isDuplicate == false)
    {
        [_m_ContactList addObject:(newContact)];
    }
    else
    {
        NSLog(@"%@", @"Error contact is already in List");
    }
}

-(void)listContacts
{
    for(Contact *c in _m_ContactList)
    {
        NSUInteger index = [_m_ContactList indexOfObject:(c)];
        NSLog(@"%lu : <%@>",index,c.m_Name);
    }
}

-(void)showContact:(int)indexNum
{
    if(_m_ContactList[indexNum] != nil)
    {
        Contact *c = _m_ContactList[indexNum];
        NSLog(@"%@ \n",c.m_Name);
        NSLog(@"%@ \n",c.m_Email);
        
        for(NSString *number in c.m_PhoneNumbers)
        {
            NSLog(@"%@  %@ \n",number , [c.m_PhoneNumbers objectForKey:(number)]);
        }
    }
    else
    {
        NSLog(@"contact not found");
    }
}

-(void)findContact:(NSString *)name
{
    for(Contact *c in _m_ContactList)
    {
        if([c.m_Name containsString:(name)])
        {
            NSLog(@"%@ %@",c.m_Name,c.m_Email);
        }
    }
}


@end
