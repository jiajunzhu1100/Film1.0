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
    self.sv.contentSize=CGSizeMake(375, 600);
    self.sv.showsHorizontalScrollIndicator=self.sv.showsVerticalScrollIndicator=NO;
    bottomView=[[UIView alloc]initWithFrame:CGRectMake(0, 567, 375, 100)];
    bottomView.backgroundColor=[UIColor whiteColor];
    [self.view addSubview:bottomView];
    UIScrollView *lineBarView=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 15, 578)];
    lineBarView.backgroundColor=[UIColor grayColor];
    [self.sv addSubview:lineBarView];
    UIScrollView *seatScroll=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 375, 578)];
    seatScroll.contentSize=CGSizeMake(400, 578);
    seatScroll.backgroundColor=[UIColor grayColor];
    [self.sv addSubview:seatScroll];
    [self.sv bringSubviewToFront:lineBarView];
    [self.view bringSubviewToFront:bottomView];
    for (int i=0; i<15; i++) {
        for (int j=0; j<15; j++) {
            if (j==2) {
            }else{
            but=[[UIButton alloc]initWithFrame:CGRectMake(50+18*i, 50+18*j, 15, 15)];
            but.tag=1;
            [but setTitle:@"" forState:UIControlStateNormal];
            [but setBackgroundColor:[UIColor whiteColor]];
            [seatScroll addSubview:but];
            }
        }
    }
    CGFloat seatBottom=but.frame.origin.y;
    UIView *lineBar=[[UIView alloc]initWithFrame:CGRectMake(3, 50, 12, seatBottom-30)];
    lineBar.layer.cornerRadius=6.0;
    lineBar.backgroundColor=[UIColor lightGrayColor];
    [lineBarView addSubview:lineBar];
    for (int i=1; i<(seatBottom-30)/18; i++) {
        UILabel *line=[[UILabel alloc]initWithFrame:CGRectMake(0, -18+i*18, 12, 18)];
        line.textColor=[UIColor whiteColor];
        line.textAlignment=1;
        [line setText:[NSString stringWithFormat:@"%d",i]];
        line.font=[UIFont fontWithName:@"Helvetica" size:10.0];
        [lineBar addSubview:line];
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
