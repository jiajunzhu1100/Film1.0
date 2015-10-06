//
//  UserLoginInViewController.m
//  Film1.0
//
//  Created by zjj on 15/10/6.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "UserLoginInViewController.h"

@interface UserLoginInViewController ()

@end

@implementation UserLoginInViewController


#pragma mark - Lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initBGView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Accessors
-(void)initBGView{
    saveBgView=[NSMutableArray arrayWithArray:@[@"1212.jpg",@"2323.jpg",@"gangjiong.jpg",@"zhuiai.jpg"]];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"1212.jpg"]]];
    x=1;
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(changeBgView:) userInfo:nil repeats:YES];
    
    
    //init PNG
    gwlPNG.layer.masksToBounds=YES;
    gwlPNG.layer.cornerRadius=12;
    
    //init mbtn
    mBtnLogin.layer.borderWidth=1;
    mBtnLogin.layer.borderColor=[[UIColor blackColor] CGColor];
    mBtnLoginGet.layer.borderWidth=mBtnSignInGetBack.layer.borderWidth=mBtnSignIn.layer.borderWidth=mBtnGetBackPassport.layer.borderWidth=1;
    mBtnLoginGet.layer.borderColor=mBtnSignInGetBack.layer.borderColor=mBtnSignIn.layer.borderColor=mBtnGetBackPassport.layer.borderColor=[[UIColor colorWithRed:120/255.0 green:129/255.0 blue:149/255.0 alpha:1] CGColor];
    mBtnLoginGet.layer.cornerRadius=mBtnSignInGetBack.layer.cornerRadius=mBtnSignIn.layer.cornerRadius=mBtnGetBackPassport.layer.cornerRadius=4;
   
    
    
    //init scrollview
    [mScrollBase setContentSize:CGSizeMake(1125, 358)];
    [mScrollBase setContentOffset:CGPointMake(375, 0) animated:NO];
    
    //init label
//    NSMutableAttributedString *tempString=[[NSMutableAttributedString alloc]initWithString:mLabNotisification.text];
//    [tempString addAttribute:NSForegroundColorAttributeName value:[UIColor orangeColor] range:NSMakeRange(7, 13)];
//    [tempString addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"Courier-BoldOblique" size:18.0] range:NSMakeRange(7, 13)];
//    mLabNotisification.attributedText=tempString;
//    
}
#pragma mark - IBActions
- (IBAction)backView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)nowLoginIn:(id)sender {
    [mScrollBase setContentOffset:CGPointMake(750, 0) animated:YES];
}

- (IBAction)forgetPassword:(id)sender {
    [mScrollBase setContentOffset:CGPointMake(0, 0) animated:YES];
}

- (IBAction)nowLogin:(id)sender {
}

- (IBAction)backLogin:(id)sender {
    [mScrollBase setContentOffset:CGPointMake(375, 0) animated:YES];
}

#pragma mark - Public


#pragma mark - Private
-(void)changeBgView:(NSTimer *)timer{
    
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:saveBgView[x]]]];
    x++;
    if (x>saveBgView.count) {
        x=0;
    }
}

#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - NSCopying


#pragma mark - NSObject

@end
