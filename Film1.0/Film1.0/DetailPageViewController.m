//
//  DetailPageViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/5.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "DetailPageViewController.h"

@interface DetailPageViewController ()

@end

@implementation DetailPageViewController
#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initial];
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

#pragma mark - Custom Accessors
-(void)initial{
    sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 0, 400, 600)];
    sv.contentSize=CGSizeMake(400, 2000);
    sv.showsVerticalScrollIndicator=NO;
    [self.view addSubview:sv];
}



#pragma mark - IBActions




#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - NSCopying


#pragma mark - NSObject

@end
