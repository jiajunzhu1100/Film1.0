//
//  DetailPageViewController.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/5.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DetailPageImageViewController.h"
#import "DetailtoCinemaViewController.h"

@interface DetailPageViewController : UIViewController<UIScrollViewDelegate>{
    UIScrollView *sv;
    UIScrollView *sv1;
    UIScrollView *sv2;
    IBOutlet UIView *view1;
    IBOutlet UIView  *view2;
    NSMutableArray *imgArray;
    DetailPageImageViewController *dpi;
    DetailtoCinemaViewController *d2c;
    }

@end
