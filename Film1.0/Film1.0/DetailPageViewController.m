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
    
    
    sv.showsVerticalScrollIndicator=YES;
    sv.backgroundColor=[UIColor clearColor];
    sv.delegate=self;
    
    
    view1=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 400, 2000)];
    view1.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:0];
    
    UILabel *filmName=[[UILabel alloc]initWithFrame:CGRectMake(150, 0, 50, 40)];
    filmName.text=@"港囧";
    filmName.textAlignment=1;
    filmName.textColor=[UIColor whiteColor];
    filmName.backgroundColor=[UIColor clearColor];
    [view1 addSubview:filmName];
    [view1 bringSubviewToFront:filmName];
    view2=[[UIView alloc]initWithFrame:CGRectMake(0, 50, 400, 1950)];
    CGFloat toButtomView=view2.layer.frame.origin.y+view2.layer.frame.size.height;
    sv.contentSize=CGSizeMake(400, toButtomView+50);
    [self.view addSubview:sv];
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
    
    //Actor and Director List
    sv2=[[UIScrollView alloc]initWithFrame:CGRectMake(20, 150, 300, 75)];
    
    UIImageView *img1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 50, 50)];
    img1.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img2=[[UIImageView alloc]initWithFrame:CGRectMake(75, 0, 50, 50)];
    img2.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img3=[[UIImageView alloc]initWithFrame:CGRectMake(150, 0, 50, 50)];
    img3.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img4=[[UIImageView alloc]initWithFrame:CGRectMake(225, 0, 50, 50)];
    img4.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img5=[[UIImageView alloc]initWithFrame:CGRectMake(300, 0, 50, 50)];
    img5.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img6=[[UIImageView alloc]initWithFrame:CGRectMake(375, 0, 50, 50)];
    img6.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    img1.layer.borderWidth=img2.layer.borderWidth=img3.layer.borderWidth=img4.layer.borderWidth=img5.layer.borderWidth=img6.layer.borderWidth=3;
    img1.layer.borderColor=img2.layer.borderColor=img3.layer.borderColor=img4.layer.borderColor=img5.layer.borderColor=img6.layer.borderColor=[[UIColor grayColor]CGColor];
//    [sv2 addSubview:img1];
    imgArray=[[NSMutableArray alloc]initWithArray:@[img1,img2,img3,img4,img5,img6]];
    for (int i=0; i<imgArray.count; i++) {
        [sv2 addSubview:imgArray[i]];
    }
    CGFloat tBView=img6.layer.frame.origin.x+img6.layer.frame.size.width;
    sv2.contentSize=CGSizeMake(tBView+50, 75);
    sv2.showsHorizontalScrollIndicator=NO;
    [view2 addSubview:sv2];
    //DetailPageImageView
    dpi=[[DetailPageImageViewController alloc]init];
    dpi.view.frame=CGRectMake(0, 0, 400, 600);
    [sv addSubview:dpi.view];
    [sv bringSubviewToFront:view1];
    //UpDown Button
    UIButton *updown=[[UIButton alloc]initWithFrame:CGRectMake(250, -31, 50, 40)];
    updown.layer.borderWidth=1;
    updown.layer.borderColor=[[UIColor redColor]CGColor];
    [updown setTitle:@"HAHA" forState:UIControlStateNormal];
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(downGesture:)];
    [updown addGestureRecognizer:tap];
    [view1 addSubview:updown];
    sv1=[[UIScrollView alloc]initWithFrame:CGRectMake(0, 300, 400, 600)];
    sv1.showsVerticalScrollIndicator=NO;
    sv1.backgroundColor=[UIColor clearColor];
    sv1.delegate=self;
    [sv addSubview:sv1];
    [sv bringSubviewToFront:sv1];
    [sv1 addSubview:view1];
    UIButton *next=[[UIButton alloc]initWithFrame:CGRectMake(0, 0, 150, 45)];
    [next setBackgroundColor:[UIColor orangeColor]];
    [next setTitle:@"选座购票" forState:UIControlStateNormal];
    [next setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [next addTarget:self action:@selector(doClickNext:) forControlEvents:UIControlEventTouchUpInside];
    //UIBarButtonItem *one = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    UIBarButtonItem *one=[[UIBarButtonItem alloc]initWithCustomView:next];
    [self setToolbarItems:@[one]];
    
}


#pragma mark - IBActions
-(void)downGesture:(UIGestureRecognizer *)gesture{
    NSLog(@"hello!");
    if (sv1.layer.frame.origin.y==300) {
        [sv1 setContentOffset:CGPointMake(0, -300) animated:YES];
    }else if (sv1.layer.frame.origin.y==300){
        [sv1 setContentOffset:CGPointMake(0, -300) animated:YES];
    }
    
}
-(void)doClickNext:(UIGestureRecognizer *)gesture{
    d2c=[[DetailtoCinemaViewController alloc]init];
    [self.navigationController pushViewController:d2c animated:YES];
}


#pragma mark - Public


#pragma mark - Private


#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - UIScrollDelegate
-(void)scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    NSLog(@"hello i am dragging");
    [self.navigationController setToolbarHidden:YES animated:YES];
}
-(void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    [self.navigationController setToolbarHidden:NO animated:YES];
    NSLog(@"end");
}
#pragma mark - NSCopying


#pragma mark - NSObject

@end
