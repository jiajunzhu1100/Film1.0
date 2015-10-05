//
//  UserInfoViewController.m
//  Film1.0
//
//  Created by zjj on 15/10/5.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "UserInfoViewController.h"

@interface UserInfoViewController ()

@end

@implementation UserInfoViewController
#pragma mark - Lifecycle
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setInitAccssors];
    [self initScrollView];
    [self initSignIn];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
#pragma mark - Custom Accessors
-(void)setInitAccssors{
    uImgTouxiang.layer.masksToBounds=YES;
    uImgTouxiang.layer.cornerRadius=50;
    tableUserInfoSetting.delegate=self;
    tableUserInfoSetting.dataSource=self;
    [tableUserInfoSetting setBackgroundColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]];
    
}
-(void)initSignIn{
    [mBtnSignin setBackgroundColor:[UIColor clearColor]];
    mBtnSignin.layer.borderWidth=1;
    mBtnSignin.layer.borderColor=[[UIColor whiteColor] CGColor];
    mBtnSignin.layer.cornerRadius=4;
    
    //init bgview
    self.bgview=[[UIView alloc]initWithFrame:CGRectMake(0, 0, 375, 196)];
    [self.bgview setBackgroundColor:[UIColor blackColor]];
    self.bgview.alpha=0.48;
    [self.view addSubview:self.bgview];
    
    [self.view bringSubviewToFront:self.bgview];
    [self.view bringSubviewToFront:mBtnSettingUserInfo];
    [self.view bringSubviewToFront:mBtnSignin];
    [self.view bringSubviewToFront:uImgTouxiang];
    
}
-(void)initScrollView{
    UIImageView *img1=[[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 120,66)];
    img1.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img2=[[UIImageView alloc]initWithFrame:CGRectMake(120, 0, 120, 66)];
    img2.image=[UIImage imageNamed:@"jiehun@2x.jpg"];
    UIImageView *img3=[[UIImageView alloc]initWithFrame:CGRectMake(240, 0, 120, 66)];
    img3.image=[UIImage imageNamed:@"tegong@2x.jpg"];
    UIImageView *img4=[[UIImageView alloc]initWithFrame:CGRectMake(360, 0, 120, 66)];
    img4.image=[UIImage imageNamed:@"titans@2x.jpg"];
    UIImageView *img5=[[UIImageView alloc]initWithFrame:CGRectMake(480, 0, 120, 66)];
    img5.image=[UIImage imageNamed:@"gangjiong@2x.jpg"];
    UIImageView *img6=[[UIImageView alloc]initWithFrame:CGRectMake(600, 0, 120, 66)];
    img6.image=[UIImage imageNamed:@"jiehun@2x.jpg"];
    NSMutableArray *imageArray=[[NSMutableArray alloc]initWithArray:@[img1,img2,img3,img4,img5,img6]];
    for (int i=0; i<imageArray.count; i++) {
        [mScrollScroll1 addSubview:imageArray[i]];
//        [mScrollScroll2 addSubview:imageArray[i]];
//        [mScrollScroll3 addSubview:imageArray[i]];
    }
    
    NSMutableArray *temp2=[NSMutableArray arrayWithArray:imageArray];
    for (int i=0; i<temp2.count; i++) {
        [mScrollScroll2 addSubview:temp2[i]];
        //        [mScrollScroll2 addSubview:imageArray[i]];
        //        [mScrollScroll3 addSubview:imageArray[i]];
    }
//    NSMutableArray *temp3=[NSMutableArray arrayWithArray:imageArray];
//    for (int i=0; i<temp3.count; i++) {
//        [mScrollScroll3 addSubview:temp3[i]];
//        //        [mScrollScroll2 addSubview:imageArray[i]];
//        //        [mScrollScroll3 addSubview:imageArray[i]];
//    }
    

    
    [mScrollScroll1 setContentSize:CGSizeMake(720, 66)];
    [mScrollScroll2 setContentSize:CGSizeMake(720, 66)];
    [mScrollScroll2 setContentOffset:CGPointMake(120, 0) animated:NO];
//    [mScrollScroll3 setContentSize:CGSizeMake(720, 66)];
//    [mScrollScroll3 setContentOffset:CGPointMake(240, 0) animated:NO];

    
    [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(scrollViewScroll:) userInfo:nil repeats:YES];
    
    
    
    
    
    
    
}
#pragma mark - IBActions

-(IBAction)tempBackView:(id)sender{
    if (self.delegate && [self.delegate respondsToSelector:@selector(backView)]) {
        [self.delegate backView];
    }
}


#pragma mark - Public


#pragma mark - Private
-(void)scrollViewScroll:(NSTimer *)timer{
    CGPoint point=CGPointMake(mScrollScroll1.contentOffset.x+0.5, mScrollScroll1.contentOffset.y);
    mScrollScroll1.contentOffset=point;
    mScrollScroll2.contentOffset=point;
    mScrollScroll3.contentOffset=point;
    if (mScrollScroll1.contentOffset.x==360) {
        [mScrollScroll1 scrollRectToVisible:CGRectMake(0, 0, 120, 66) animated:NO];
    }else if(mScrollScroll2.contentOffset.x==360){
        [mScrollScroll2 scrollRectToVisible:CGRectMake(0, 0, 120, 66) animated:NO];

    }else if (mScrollScroll3.contentOffset.x==360){
        [mScrollScroll3 scrollRectToVisible:CGRectMake(0, 0, 120, 66) animated:NO];

    }
}

#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    if (section==2) {
        return 2;
    }else{
       return 1; 
    }
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    if (indexPath.section==0) {
        cell.textLabel.text=@"每日红包";
    }else if(indexPath.section==1){
        cell.textLabel.text=@"切换城市";
    
    }else if (indexPath.section==2){
       
        if (indexPath.row==0) {
            cell.textLabel.text=@"联系在线客服";
        }else{
            cell.textLabel.text=@"拨打客服电话";
        }
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 3;
}
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
#pragma mark -UIScrollViewDelegate
-(void)scrollViewDidScroll:(UIScrollView *)scrollView{
    if (scrollView.contentOffset.x==330) {
        [scrollView setContentOffset:CGPointMake(66, 0)animated:NO];
    }else if (scrollView.contentOffset.x==0){
        [scrollView setContentOffset:CGPointMake(264, 0)animated:NO];
    }
}
#pragma mark - NSCopying


#pragma mark - NSObject
@end
