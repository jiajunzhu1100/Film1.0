//
//  SelectCinemaTableViewCell.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/8.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SeatPageViewController.h"
@protocol SelectCinemaTableViewCellDelegate <NSObject>

@optional
-(void)doClickNext;

@end
@interface SelectCinemaTableViewCell : UITableViewCell<UIGestureRecognizerDelegate>{
    SeatPageViewController *sp;
    UIView *fTimeView;
}
@property (weak, nonatomic) IBOutlet UIScrollView *sv;
@property (weak, nonatomic) IBOutlet UIView *view1;
@property (weak, nonatomic) IBOutlet UIView *view2;
@property (weak, nonatomic) IBOutlet UIView *view3;
@property (weak, nonatomic) IBOutlet UIView *view4;
@property (weak, nonatomic) IBOutlet UIView *view5;
@property (weak, nonatomic) IBOutlet UIView *view6;
@property(weak,nonatomic)id<SelectCinemaTableViewCellDelegate>delegate;
@end
