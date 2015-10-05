//
//  UserInfoViewController.m
//  Film1.0
//
//  Created by zjj on 15/10/5.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "UserInfoViewController.h"

@interface UserInfoViewController ()

@end

@implementation UserInfoViewController
#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setInitAccssors];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Custom Accessors
-(void)setInitAccssors{
    uImgTouxiang.layer.masksToBounds=YES;
    uImgTouxiang.layer.cornerRadius=64;
    
    //init tableview
    
}
#pragma mark - IBActions

-(IBAction)tempBackView:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(backView)]) {
        [self.delegate backView];
    }
}


#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - NSCopying


#pragma mark - NSObject
@end
