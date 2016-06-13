//
//  ViewController.m
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import "ChatCell.h"

@interface ViewController ()
@property NSArray* messages;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    [self setupAvatarImage];
    [self setupTableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    self.messages = [[NSArray alloc] initWithObjects:
                     @"short message",
                     @"longggggggggggg mesageeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee kjalsdfjasldfjalsfjalskfjalskdfjalskdfjalskdfjalskfjaasdasdasdasdasd", nil];
}

- (void) setupAvatarImage; {
    [self.imvPartnerAvatar layoutIfNeeded];
    self.imvPartnerAvatar.layer.cornerRadius = self.imvPartnerAvatar.frame.size.width/2;
    self.imvPartnerAvatar.clipsToBounds = YES;
    
    self.imvPartnerAvatar.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imvPartnerAvatar.layer.borderWidth = 2.0f;
}

- (void) setupTableView; {
    self.tbvChat.rowHeight = UITableViewAutomaticDimension;
    self.tbvChat.estimatedRowHeight = 100.0f;
    self.tbvChat.separatorStyle = UITableViewCellSeparatorStyleNone;
}

#pragma mark - UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    return 10;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath; {
    ChatCell* chatCell = [tableView dequeueReusableCellWithIdentifier:@"CellLeft"];
    [chatCell setupLayout];
    
    return chatCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath; {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

@end
