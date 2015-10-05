//
//  OnSaleViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/4.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "OnSaleViewController.h"

@interface OnSaleViewController ()

@end

@implementation OnSaleViewController


#pragma mark - Lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    [self initial];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



#pragma mark - Custom Accessors
-(void)initial{
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleGesture:)];
    tap.numberOfTapsRequired=1;
    [view1 addGestureRecognizer:tap];
}
-(void)handleGesture:(UIGestureRecognizer *)gesture{
    NSLog(@"yeah!");
    DetailPageViewController *dp=[[DetailPageViewController alloc]init];
    [self.navigationController pushViewController:dp animated:YES];
}
#pragma mark - IBActions
- (IBAction)more:(UIButton *)sender {
    DetailPageViewController *dp=[[DetailPageViewController alloc]init];
    [self presentViewController:dp animated:YES completion:nil];
}




#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - NSCopying


#pragma mark - NSObject





@end
