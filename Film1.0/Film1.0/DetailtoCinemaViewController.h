//
//  DetailtoCinemaViewController.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/7.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SelectCinemaTableViewCell.h"
#import "SeatPageViewController.h"
@interface DetailtoCinemaViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,SelectCinemaTableViewCellDelegate>{
    __weak IBOutlet UITableView *table;
    //SelectCinemaTableViewCell *scCell;
    SeatPageViewController *sp;
}

@end
