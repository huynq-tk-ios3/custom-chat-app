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

@end
