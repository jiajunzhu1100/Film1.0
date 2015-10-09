//
//  SeatPageViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/8.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "SeatPageViewController.h"

@interface SeatPageViewController ()

@end

@implementation SeatPageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor=[UIColor grayColor];
    self.sv.backgroundColor=[UIColor grayColor];
    self.sv.contentSize=CGSizeMake(400, 600);
    bottomView=[[UIView alloc]initWithFrame:CGRectMake(0, 500, 375, 167)];
    [self.view addSubview:bottomView];
    [self.view bringSubviewToFront:bottomView];
    for (int i=0; i<7; i++) {
        for (int j=0; j<7; j++) {
            UIButton *but=[[UIButton alloc]initWithFrame:CGRectMake(50+50*i, 50+50*j, 40, 40)];
            but.tag=1;
            [but setTitle:@"" forState:UIControlStateNormal];
            [but setBackgroundColor:[UIColor orangeColor]];
            [self.sv addSubview:but];
        }
    }
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
