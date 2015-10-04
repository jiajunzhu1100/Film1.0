//
//  SpecialEventViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/4.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "SpecialEventViewController.h"

@interface SpecialEventViewController ()

@end

@implementation SpecialEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.view.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    sv=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 50, 360, 250)];
    sv.contentSize=CGSizeMake(2160, 250);
    sv.delegate=self;
    [sv setBounces:NO];
    [sv setPagingEnabled:YES];
    sv.showsHorizontalScrollIndicator=NO;
    [sv setContentOffset:CGPointMake(360, 0)];
    [self.view addSubview:sv];
    pc=[[UIPageControl alloc]initWithFrame:CGRectMake(0, 30, 290, 0)];
    [pc setNumberOfPages:4];
    [pc setCurrentPage:0];
    [pc setPageIndicatorTintColor:[UIColor grayColor]];
    [pc setCurrentPageIndicatorTintColor:[UIColor orangeColor]];
    [self.view addSubview:pc];
    [self setimage];
}
-(void)scrollViewDidScroll:(UIScrollView *)sender{
    int page=(sender.contentOffset.x/360)-1;
    pc.currentPage=page;
    if (sender.contentOffset.x==1800) {
        [sender setContentOffset:CGPointMake(360, 0)animated:NO];
    }else if (sender.contentOffset.x==0){
        [sender setContentOffset:CGPointMake(1440, 0)animated:NO];
    }
}
-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    
}
-(void)setimage{
    UIImageView *img1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 360, 250)];
    img1.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img2=[[UIImageView alloc]initWithFrame:CGRectMake(360, 0, 360, 250)];
    img2.image=[UIImage imageNamed:@"jiehun@2x.jpg"];
    UIImageView *img3=[[UIImageView alloc]initWithFrame:CGRectMake(720, 0, 360, 250)];
    img3.image=[UIImage imageNamed:@"tegong@2x.jpg"];
    UIImageView *img4=[[UIImageView alloc]initWithFrame:CGRectMake(1080, 0, 360, 250)];
    img4.image=[UIImage imageNamed:@"titans@2x.jpg"];
    UIImageView *img5=[[UIImageView alloc]initWithFrame:CGRectMake(1440, 0, 360, 250)];
    img5.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img6=[[UIImageView alloc]initWithFrame:CGRectMake(1800, 0, 360, 250)];
    img6.image=[UIImage imageNamed:@"jiehun@2x.jpg"];
    NSMutableArray *imageArray=[[NSMutableArray alloc]initWithArray:@[img1,img2,img3,img4,img5,img6]];
    for (int i=0; i<imageArray.count; i++) {
        [sv addSubview:imageArray[i]];
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
