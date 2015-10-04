//
//  ViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/4.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 400, 600)];
    sv.contentSize=CGSizeMake(400, 2000);
    [self.view addSubview:sv];
    os=[[OnSaleViewController alloc]init];
    os.view.frame=CGRectMake(7, 150, 360, 420);
    [sv addSubview:os.view];
    so=[[SoonOnViewController alloc]init];
    so.view.frame=CGRectMake(7, 580, 360, 210);
    [sv addSubview:so.view];
    se=[[SpecialEventViewController alloc]init];
    se.view.frame=CGRectMake(7, 730, 360, 300);
    [sv addSubview:se.view];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
