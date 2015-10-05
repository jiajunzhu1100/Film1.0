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
    sv.showsVerticalScrollIndicator=YES;
    sv.backgroundColor=[UIColor grayColor];
    sv.delegate=self;
    [self.view addSubview:sv];
    view1=[[UIView alloc]initWithFrame:CGRectMake(0, 300, 400, 2000)];
    view1.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:0];
    [sv addSubview:view1];
    UILabel *filmName=[[UILabel alloc]initWithFrame:CGRectMake(150, 0, 50, 40)];
    filmName.text=@"港囧";
    filmName.textAlignment=1;
    filmName.textColor=[UIColor whiteColor];
    [view1 addSubview:filmName];
    view2=[[UIView alloc]initWithFrame:CGRectMake(0, 50, 400, 1950)];
    view2.backgroundColor=[UIColor whiteColor];
    [view1 addSubview:view2];
    UILabel *filmType=[[UILabel alloc]initWithFrame:CGRectMake(150, 8, 50, 40)];
    [filmType setText:@"喜剧"];
    filmType.textAlignment=1;
    filmType.layer.borderWidth=1;
    filmType.layer.borderColor=[[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1] CGColor];
    [view2 addSubview:filmType];
    UIImageView *img=[[UIImageView alloc]initWithFrame:CGRectMake(10, -100, 100, 200)];
    img.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    [view2 addSubview:img];
    UILabel *filmTime=[[UILabel alloc]initWithFrame:CGRectMake(250, 8, 100, 40)];
    filmTime.text=@"1时44分";
    filmTime.textAlignment=1;
    filmTime.layer.borderWidth=1;
    filmTime.layer.borderColor=[[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1] CGColor];
    [view2 addSubview:filmTime];
    UILabel *filmSource=[[UILabel alloc]initWithFrame:CGRectMake(150, 56, 50, 40)];
    filmSource.text=@"中国";
    filmSource.textAlignment=1;
    filmSource.layer.borderWidth=1;
    filmSource.layer.borderColor=[[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1] CGColor];
    [view2 addSubview:filmSource];
    //self.navigationController.toolbarHidden=NO;
    tool=[[UITabBar alloc]initWithFrame:CGRectMake(0, 619, 400, 30)];
    tool.backgroundColor=[UIColor redColor];
    [self.view addSubview:tool];
    UITabBarItem *item1=[[UITabBarItem alloc]initWithTitle:@"1" image:[UIImage imageNamed:@"touxiang2.png"] tag:1];
    
    [tool setItems:@[item1]];
}


#pragma mark - IBActions




#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - UIScrollDelegate
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"hello i am dragging");
    tool.hidden=YES;
    
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    tool.hidden=NO;
    NSLog(@"end");
}
#pragma mark - NSCopying


#pragma mark - NSObject

@end
