//
//  Contact.h
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Contact : NSObject

@property NSString* m_Name;

@property NSString* m_Email;

@property NSMutableDictionary* m_PhoneNumbers;

-(void)AddPhoneNumber:(NSString *)m_Label withNumber:(NSString*)m_Number;

@end
