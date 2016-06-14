//
//  ChatMessage.m
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ChatMessage.h"

@implementation ChatMessage

- (instancetype) initWithMessage:(NSString *)message Alias:(NSString *)alias; {
    self = [super init];
    
    if(self) {
        self.message = message;
        self.alias = alias;
    }
    
    return self;
}

+ (NSMutableArray*) getMessages; {
    NSMutableArray* returnArray = [[NSMutableArray alloc] init];
    
    [returnArray addObject: [[ChatMessage alloc] initWithMessage:@"Hi, we can chat here" Alias:@""]];
    [returnArray addObject: [[ChatMessage alloc] initWithMessage:@"Cool!" Alias:@"Laura"]];
    [returnArray addObject: [[ChatMessage alloc] initWithMessage:@"Hi girl, it's been a long time that i haven't seen you. Where are you these days? I am really missing your smile, your kiss :D :D This" Alias:@""]];
    [returnArray addObject: [[ChatMessage alloc] initWithMessage:@"Wow really?? Come to me tonight :)" Alias:@"Laura"]];
    
    return returnArray;
}

@end
