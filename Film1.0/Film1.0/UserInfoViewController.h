//
//  UserInfoViewController.h
//  Film1.0
//
//  Created by zjj on 15/10/5.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "UserLoginInViewController.h"
#import "DingdanViewController.h"

@class UserInfoViewController;
@protocol UserInfoViewControllerDelegate <NSObject>

@optional
-(void)backView;
-(void)openLoginView;
-(void)openDingdan;

@end
@interface UserInfoViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,UIScrollViewDelegate>{
    __weak IBOutlet UIButton *mBtnSettingUserInfo;
    __weak IBOutlet UIButton *mBtnSignin;
    __weak IBOutlet UIImageView *uImgTouxiang;
    __weak IBOutlet UIScrollView *mScrollScroll1;
    __weak IBOutlet UIScrollView *mScrollScroll2;
    __weak IBOutlet UIScrollView *mScrollScroll3;
    
    __weak IBOutlet UIButton *mBtnCheck;
    __weak IBOutlet UIButton *mBtnGetBackPassport;
    __weak IBOutlet UIButton *mBtnFilmMates;
    
    __weak IBOutlet UITableView *tableUserInfoSetting;
    
    UserLoginInViewController *userLoginView;
    DingdanViewController *dingDanView;
}
@property(strong,nonatomic)id<UserInfoViewControllerDelegate>delegate;
@property(strong,nonatomic)UIView *bgview;
-(IBAction)tempBackView:(id)sender;
-(IBAction)loginIn:(id)sender;
-(IBAction)openDingdan:(id)sender;
@end
