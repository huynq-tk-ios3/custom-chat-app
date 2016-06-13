//
//  ViewController.h
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDelegate, UITableViewDataSource>

@property (weak, nonatomic) IBOutlet UIImageView *imvPartnerAvatar;
@property (weak, nonatomic) IBOutlet UITableView *tbvChat;

@end

