//
//  ChatCell.m
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ChatCell.h"
#import "ChatMessage.h"

@interface ChatCell()

@property (nonatomic) NSString* message;

@end

@implementation ChatCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void) setupLayout; {
    
    self.lblChatMessage.text = @"Short messageksjdfl;asdjflaksjdflaksdjflskadjfLongmessage\nasd";
    
    self.vPrefix.layer.cornerRadius = self.imvAvatar.frame.size.width/4;
    self.vPrefix.clipsToBounds = YES;
    self.vPrefix.layer.zPosition = 1;
    
    self.vChatMessage.layer.cornerRadius = self.imvAvatar.frame.size.width/4;
    self.vChatMessage.clipsToBounds = YES;
    self.vChatMessage.layer.zPosition = 2;
    
    self.lblChatMessage.layer.zPosition = 3;
    
    self.imvAvatar.layer.cornerRadius = self.imvAvatar.frame.size.width/2;
    self.imvAvatar.clipsToBounds = YES;
    self.imvAvatar.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imvAvatar.layer.borderWidth = 2.0f;
    self.imvAvatar.layer.zPosition = 4;
    
//    UIView* backgroundView = [[UIView alloc] init];
//    [backgroundView setBackgroundColor:[UIColor clearColor]];
//    [self setSelectedBackgroundView:backgroundView];

    
    [self layoutIfNeeded];

}

- (void) setMessage: (NSString*)message; {
    self.message = message;
    [self setupLayout];
}

@end
