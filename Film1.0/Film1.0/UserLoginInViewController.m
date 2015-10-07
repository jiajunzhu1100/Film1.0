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

//validate telephone
- (BOOL)validateMobile:(NSString *)mobileNum
{
    /**
     * 手机号码
     * 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     * 联通：130,131,132,152,155,156,185,186
     * 电信：133,1349,153,180,189
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    /**
     10         * 中国移动：China Mobile
     11         * 134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     12         */
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    /**
     15         * 中国联通：China Unicom
     16         * 130,131,132,152,155,156,185,186
     17         */
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    /**
     20         * 中国电信：China Telecom
     21         * 133,1349,153,180,189
     22         */
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:mobileNum] == YES)
        || ([regextestcm evaluateWithObject:mobileNum] == YES)
        || ([regextestct evaluateWithObject:mobileNum] == YES)
        || ([regextestcu evaluateWithObject:mobileNum] == YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}
-(BOOL)validateSpecialSet:(NSString *)str{
    
    return NO;
}
#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - NSCopying


#pragma mark - NSObject

@end
