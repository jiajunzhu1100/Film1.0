//
//  DetailtoCinemaViewController.h
//  Film1.0
//
//  Created by 郭正豪 on 15/10/7.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailtoCinemaViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>{
    __weak IBOutlet UITableView *table;
}

@end
