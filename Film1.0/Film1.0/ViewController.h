//
//  ViewController.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/4.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "OnSaleViewController.h"
#import "SoonOnViewController.h"
#import "SpecialEventViewController.h"
#import "UserInfoViewController.h"

@interface ViewController : UIViewController<UserInfoViewControllerDelegate>{
    UIScrollView *sv;
    
    OnSaleViewController *os;
    SoonOnViewController *so;
    SpecialEventViewController *se;
    __weak IBOutlet UIButton *mBtnSearch;
    UserInfoViewController *mViewUserInfo;
}
-(IBAction)openSearchView:(id)sender;

@end

