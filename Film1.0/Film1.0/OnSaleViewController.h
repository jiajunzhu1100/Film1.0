//
//  OnSaleViewController.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/4.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailPageViewController.h"

@class OnSaleViewController;
@protocol OnSaleViewControllerDelegate <NSObject>

@optional
-(void)openSubview;

@end

@interface OnSaleViewController : UIViewController<UIGestureRecognizerDelegate>{
    __strong IBOutlet UIView  *view1;
    __weak IBOutlet UIView  *view2;
    __weak IBOutlet UIView  *view3;
    __weak IBOutlet UIView  *view4;
    __weak IBOutlet UIView  *view5;
    __weak IBOutlet UIView  *view6;
    DetailPageViewController *dp;
}
@property (weak, nonatomic) IBOutlet UIButton *more;
@property(weak,nonatomic)id<OnSaleViewControllerDelegate>delegate;
@end
