//
//  main.m
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "Contact.h"
#import "ContactList.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        bool contactListRunning = true;
        ContactList *m_Contacts = [[ContactList alloc] init];
        InputCollector *inputCollector = [[InputCollector alloc] init];
        
        while(contactListRunning)
        {
        NSString *userInput = [inputCollector inputForPrompt:(@"What would you like do next? new - Create a new contact list - List all contacts quit - Exit Application > _")];
        
            if([userInput isEqualToString:(@"quit")])
            {
                contactListRunning = false;
                break;
            }
            else if([userInput isEqualToString:(@"new")])
            {
                Contact *contact = [[Contact alloc] init];
                contact.m_Email = [inputCollector inputForPrompt:(@"Enter new Contact e-mail : ")];
                contact.m_Name = [inputCollector inputForPrompt:(@"Enter new Contact name : ")];
                
                bool addingPhoneNumbers = true;
                
                while(addingPhoneNumbers)
                {
                  NSString *addPhoneNumber = [inputCollector inputForPrompt:(@"Do you want to add a phone Number?: ")];
                  
                    if([addPhoneNumber isEqualToString:(@"yes")])
                    {
                        NSString *label = [inputCollector inputForPrompt:(@"Label") ];
                        NSString *number = [inputCollector inputForPrompt:(@" Phone Number")];
                        
                        [contact AddPhoneNumber:label withNumber:number];
                    }
                    else
                    {
                        addingPhoneNumbers = false;
                        continue;
                    }
                }
                
                
                [m_Contacts addContact:(contact)];
            }
            else if([userInput isEqualToString:(@"list")])
            {
                [m_Contacts listContacts];
            }
            else if([userInput containsString:(@"show ")])
            {
                NSArray *components = [userInput componentsSeparatedByString:(@" ")];
                int index = [components[1] intValue];
                
                [m_Contacts showContact:(index)];
            }
            else if([userInput containsString:(@"find")])
            {
                NSArray *components = [userInput componentsSeparatedByString:(@" ")];
                NSString *nameToFind = components[1];
                
                [m_Contacts findContact:(nameToFind)];
            }
            else if([userInput containsString:(@"history")])
            {
                [inputCollector GetHistory];
            }
            
        }
        
    }
    return 0;
}
