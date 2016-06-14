//
//  ChatMessage.h
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ChatMessage : NSObject

@property NSString* message;
@property NSString* alias;

- (instancetype) initWithMessage: (NSString*)message Alias:(NSString*)alias;
+ (NSMutableArray*) getMessages;

@end
