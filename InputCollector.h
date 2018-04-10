//
//  InputCollector.h
//  ContactsList
//
//  Created by Alejandro Zielinsky on 2018-04-10.
//  Copyright © 2018 Alejandro Zielinsky. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputCollector : NSObject

@property NSMutableArray *m_CommandHistory;

-(NSString *)inputForPrompt:(NSString *)promptString;

-(void)GetHistory;

@end
