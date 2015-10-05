//
//  UserInfoViewController.h
//  Film1.0
//
//  Created by zjj on 15/10/5.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
@class UserInfoViewController;
@protocol UserInfoViewControllerDelegate <NSObject>

@optional
-(void)backView;

@end
@interface UserInfoViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    __weak IBOutlet UIButton *mBtnSettingUserInfo;
    __weak IBOutlet UIImageView *uImgTouxiang;
    __weak IBOutlet UIScrollView *mScrollScroll1;
    __weak IBOutlet UIScrollView *mScrollScroll2;
    __weak IBOutlet UIScrollView *mScrollScroll3;
    
    __weak IBOutlet UIButton *mBtnCheck;
    __weak IBOutlet UIButton *mBtnGetBackPassport;
    __weak IBOutlet UIButton *mBtnFilmMates;
    
    __weak IBOutlet UITableView *mTableUserInfoSetting;
}
@property(strong,nonatomic)id<UserInfoViewControllerDelegate>delegate;

-(IBAction)tempBackView:(id)sender;
@end
