//
//  SeatPageViewController.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/8.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ConfirmPageViewController.h"
@interface SeatPageViewController : UIViewController{
    UIView *bottomView;
    UIButton *but;
    NSMutableArray *seatArray;
    NSMutableDictionary *seatDict;
    NSString *pai;
    UIButton *confirm;
}
@property (weak, nonatomic) IBOutlet UIScrollView *sv;
-(NSMutableArray *)getLabel;
@end
