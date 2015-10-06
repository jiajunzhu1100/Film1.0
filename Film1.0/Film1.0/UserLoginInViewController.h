//
//  UserLoginInViewController.h
//  Film1.0
//
//  Created by zjj on 15/10/6.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UserLoginInViewController : UIViewController{
    NSMutableArray *saveBgView;
    int x;
    __weak IBOutlet UIView *alphaBgView;
    __weak IBOutlet UIImageView *gwlPNG;
    
    __weak  IBOutlet UIView *txtBgView1;
    __weak  IBOutlet UIView *txtBgView2;
    __weak IBOutlet UITextField *txtUser;
     __weak IBOutlet UITextField *txtPassport;
    __weak IBOutlet UIButton *mBtnForgetPassword;
    __weak IBOutlet UIButton *mBtnLoginIn;
    __weak IBOutlet UIButton *mBtnLogin;
    __weak IBOutlet UIScrollView *mScrollBase;
    __weak IBOutlet UIButton *mBtnLoginGet;
    __weak IBOutlet UIButton *mBtnGetBackPassport;
    __weak IBOutlet UIButton *mBtnSignIn;
    __weak IBOutlet UIButton *mBtnSignInGetBack;
    __weak IBOutlet UILabel *mLabNotisification;
}
- (IBAction)backView:(id)sender;
- (IBAction)nowLoginIn:(id)sender;
- (IBAction)forgetPassword:(id)sender;
- (IBAction)nowLogin:(id)sender;
- (IBAction)backLogin:(id)sender;

@end
