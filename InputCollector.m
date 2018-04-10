//
//  InputCollector.m
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import "InputCollector.h"

@implementation InputCollector

-(instancetype)init
{
    self = [super init];
    
    if(self)
    {
        _m_CommandHistory = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(NSString *)inputForPrompt:(NSString *)promptString
{
    NSLog(@"%@", promptString);
    
    char inputChars[255];
    fgets(inputChars,255,stdin);
    
    NSString *userInput = [NSString stringWithCString:inputChars encoding:NSUTF8StringEncoding];
    
    userInput = [userInput stringByTrimmingCharactersInSet: NSCharacterSet.whitespaceAndNewlineCharacterSet];
    
    [_m_CommandHistory addObject:(userInput)];
    
    return userInput;
}

-(void)GetHistory
{
    NSArray *lastCommands;
    //Get 3 last commands entered
    if (_m_CommandHistory.count > 3) { // check count first to avoid exception
       lastCommands = [_m_CommandHistory subarrayWithRange:NSMakeRange(_m_CommandHistory.count - 3, 3)];
    }
    
    for(NSString *cmd in lastCommands)
    {
        NSLog(@"%@",cmd);
    }
}

@end
