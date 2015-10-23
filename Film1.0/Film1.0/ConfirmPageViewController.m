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
    self.view.backgroundColor=[UIColor colorWithRed:248/255.0 green:248/255.0 blue:248/255.0 alpha:1];
//    for (int i=0; i<_array.count; i++) {
//        UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(0, 300+50*i, 375, 40)];
//        label.textAlignment=1;
//        label.textColor=[UIColor orangeColor];
//        NSLog(@"%@",_array);
//        label.text=[NSString stringWithFormat:@"%@",_array[i]];
//        [self.view addSubview:label];
//
//    }
    self.seat.text = [_array componentsJoinedByString:@","];
    self.navigationController.navigationBar.barTintColor = [UIColor whiteColor];
    UIButton *back=[UIButton buttonWithType:UIButtonTypeCustom];
    back.frame=CGRectMake(0, 0, 25, 25);
    [back setImage:[UIImage imageNamed:@"leftarrowbutton@2x.jpg"] forState:UIControlStateNormal];
    [back addTarget:self action:@selector(doBack) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *left=[[UIBarButtonItem alloc]initWithCustomView:back];
    self.navigationItem.leftBarButtonItem=left;
    UIButton *cancel=[UIButton buttonWithType:UIButtonTypeCustom];
    cancel.frame=CGRectMake(100, 0, 45, 45);
    [cancel setTitle:@"取消" forState:UIControlStateNormal];
    [cancel setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [cancel addTarget:self action:@selector(doBackToRoot) forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *right=[[UIBarButtonItem alloc]initWithCustomView:cancel];
    self.navigationItem.rightBarButtonItem=right;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)doBack{
    [self.navigationController popViewControllerAnimated:YES];
}
-(void)doBackToRoot{
    
    [self.navigationController popToRootViewControllerAnimated:YES];
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
