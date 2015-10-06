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
}
- (IBAction)backView:(id)sender;

@end
