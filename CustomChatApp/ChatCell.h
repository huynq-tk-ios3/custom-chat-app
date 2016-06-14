//
//  ChatCell.h
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ChatMessage.h"

@interface ChatCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UIImageView *imvAvatar;
@property (weak, nonatomic) IBOutlet UILabel *lblPrefix;
@property (weak, nonatomic) IBOutlet UIView *vPrefix;
@property (weak, nonatomic) IBOutlet UILabel *lblChatMessage;
@property (weak, nonatomic) IBOutlet UIView *vChatMessage;

@property (nonatomic) ChatMessage* message;

- (void) setupLayout;

@end
