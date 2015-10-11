//
//  ConfirmPageViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/11.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "ConfirmPageViewController.h"

@interface ConfirmPageViewController ()

@end

@implementation ConfirmPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    //sp=[[SeatPageViewController alloc]init];
    self.view.backgroundColor=[UIColor colorWithRed:248/255.0 green:248/255.0 blue:248/255.0 alpha:1];
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 350, 375, 350)];
    label.textAlignment=1;
    label.textColor=[UIColor orangeColor];
    label.text=@"1";
    [self.view addSubview:label];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
