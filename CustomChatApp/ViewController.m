//
//  ViewController.m
//  CustomChatApp
//
//  Created by admin on 6/13/16.
//  Copyright © 2016 Techkids. All rights reserved.
//

#import "ViewController.h"
#import "ChatMessage.h"
#import "ChatCell.h"

@interface ViewController ()
@property NSMutableArray* chatMessages;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self loadData];
    [self setupAvatarImage];
    [self setupTableView];
    [self setUpGestures];
    [self setupChatBox];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (void) setupAvatarImage; {
    [self.imvPartnerAvatar layoutIfNeeded];
    self.imvPartnerAvatar.layer.cornerRadius = self.imvPartnerAvatar.frame.size.width/2;
    self.imvPartnerAvatar.clipsToBounds = YES;
    
    self.imvPartnerAvatar.layer.borderColor = [UIColor whiteColor].CGColor;
    self.imvPartnerAvatar.layer.borderWidth = 2.0f;
}

- (void) setupChatBox; {
    [self.vChatBox removeFromSuperview];
    [self becomeFirstResponder];
}

- (void) setupTableView; {
    self.tbvChat.rowHeight = UITableViewAutomaticDimension;
    self.tbvChat.estimatedRowHeight = 100.0f;
    self.tbvChat.separatorStyle = UITableViewCellSeparatorStyleNone;
    [self.tbvChat setShowsHorizontalScrollIndicator:NO];
    [self.tbvChat setShowsVerticalScrollIndicator:NO];
}

- (void) loadData; {
    self.chatMessages = [ChatMessage getMessages];
}

- (void) setUpGestures; {
    UITapGestureRecognizer* tapGesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(viewDidTap:)];
    [self.view addGestureRecognizer: tapGesture];
}

- (BOOL)isFirstResponder {
    return YES;
}

- (BOOL) canBecomeFirstResponder {
    return YES;
}

- (void)viewDidTap:(UITapGestureRecognizer *)recognizer {
    [self hideKeyboard];
}

#pragma mark - UITableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;{
    return 100;
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath; {
    
    ChatMessage* chatMessage = self.chatMessages[indexPath.row % self.chatMessages.count];
    ChatCell* chatCell = nil;
    
    if([chatMessage.alias isEqualToString:@""]) {
        /* Your message */
        chatCell = [tableView dequeueReusableCellWithIdentifier:@"CellRight"];
    } else {
        /* Partner message */
        chatCell = [tableView dequeueReusableCellWithIdentifier:@"CellLeft"];
    }
    
    chatCell.message = chatMessage;
    [chatCell setupLayout];
    
    return chatCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath; {
    [tableView deselectRowAtIndexPath:indexPath animated:NO];
}

#pragma MARK - ChatBox

- (UIView *)inputAccessoryView {
    return self.vChatBox;
}

- (void) hideKeyboard; {
    [self.txvChatMessage resignFirstResponder];
    [self becomeFirstResponder];
}

- (IBAction)btnSendMessageDidTap:(id)sender {
    self.txvChatMessage.text = @"";
    [self hideKeyboard];
    
}
@end
