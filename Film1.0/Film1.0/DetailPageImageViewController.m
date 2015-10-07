//
//  DetailPageImageViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/6.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "DetailPageImageViewController.h"

@interface DetailPageImageViewController ()

@end

@implementation DetailPageImageViewController
#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self Initial];
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
-(void)Initial{
    sv.frame=CGRectMake(0, 0, 400, 600);
    sv.contentSize=CGSizeMake(400, 1200);
    [self.view addSubview:sv];
    UIImageView *img1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 400, 180)];
    img1.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img3=[[UIImageView alloc]initWithFrame:CGRectMake(0, 180, 200, 120)];
    img3.image=[UIImage imageNamed:@"jiehun@2x.jpg"];
    UIImageView *img4=[[UIImageView alloc]initWithFrame:CGRectMake(200, 180, 200, 120)];
    img4.image=[UIImage imageNamed:@"tegong@2x.jpg"];
    UIImageView *img5=[[UIImageView alloc]initWithFrame:CGRectMake(0, 300, 133, 80)];
    img5.image=[UIImage imageNamed:@"titans@2x.jpg"];
    UIImageView *img6=[[UIImageView alloc]initWithFrame:CGRectMake(133, 300, 134, 80)];
    img6.image=[UIImage imageNamed:@"zhanlang@2x.jpg"];
    UIImageView *img7=[[UIImageView alloc]initWithFrame:CGRectMake(267, 300, 400, 80)];
    img7.image=[UIImage imageNamed:@"zhuiai@2x.jpg"];
    UIImageView *img8=[[UIImageView alloc]initWithFrame:CGRectMake(0, 380, 200, 120)];
    img8.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img9=[[UIImageView alloc]initWithFrame:CGRectMake(200, 380, 200, 120)];
    img9.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img10=[[UIImageView alloc]initWithFrame:CGRectMake(0, 500, 400, 65)];
    img10.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img11=[[UIImageView alloc]initWithFrame:CGRectMake(100, 500, 400, 65)];
    img11.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img12=[[UIImageView alloc]initWithFrame:CGRectMake(200, 500, 400, 65)];
    img12.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img2=[[UIImageView alloc]initWithFrame:CGRectMake(300, 500, 400, 65)];
    img2.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    NSMutableArray *imageArray=[[NSMutableArray alloc]initWithArray:@[img1,img3,img4,img5,img6,img7,img8,img9,img10,img11,img12,img2]];
    for (int i=0; i<imageArray.count; i++) {
        [sv addSubview:imageArray[i]];
    }
}
@end
