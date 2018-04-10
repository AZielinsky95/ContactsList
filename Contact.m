//
//  Contact.m
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "Contact.h"

@implementation Contact

-(instancetype)init
{
    self = [super init];
    
    if(self)
    {
        _m_Name = @" ";
        _m_Email = @" ";
        _m_PhoneNumbers = [[NSMutableDictionary alloc] init];
    }
    
    return self;
}

-(void)AddPhoneNumber:(NSString *)m_Label withNumber:(NSString *)m_Number
{
    [_m_PhoneNumbers setObject:m_Number forKey:m_Label];
}

@end
