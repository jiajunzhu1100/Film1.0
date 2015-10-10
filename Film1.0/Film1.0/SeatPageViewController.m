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
    UILabel *label=[[UILabel alloc]initWithFrame:CGRectMake(10, 5, 365, 30)];
    label.textAlignment=0;
    label.text=@"已选座位";
    label.font=[UIFont fontWithName:@"Helvetica" size:17.0];
    [bottomView addSubview:label];
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
            but.tag=10*j+i;
            [but setTitle:@"" forState:UIControlStateNormal];
            [but setBackgroundColor:[UIColor whiteColor]];
            [but addTarget:self action:@selector(dropbutton:) forControlEvents:UIControlEventTouchUpInside];
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
    seatArray=[[NSMutableArray alloc]init];
    seatDict=[[NSMutableDictionary alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)dropbutton:(UIButton *)button{
    
    [button setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    pai=[[NSString alloc]initWithFormat:@"%ld排%ld座",(button.tag/10)+1,button.tag%10+1];
    NSLog(@"%@",pai);
    
    if (button.selected==NO) {
        if (seatArray.count>4) {
            UIAlertView *err=[[UIAlertView alloc]initWithTitle:nil message:@"最多选择5个座位" delegate:self cancelButtonTitle:@"确定" otherButtonTitles:nil, nil];
            
            [err show];
        }else{
        [button setBackgroundColor:[UIColor orangeColor]];
        [seatArray addObject:pai];
        button.selected=YES;
        }
        
    }else if (button.selected==YES){
        [button setBackgroundColor:[UIColor whiteColor]];
        button.selected=NO;
        [seatArray removeObject:pai];
        [seatDict[pai] removeFromSuperview];
        [seatDict removeObjectForKey:pai];
        //[self selectedSeat];
    }
    [self selectedSeat];
   
    NSLog(@"%@",seatArray);
}
-(void)selectedSeat{
//    for (int i=0; i<seatArray.count; i++) {
//        UILabel *selectedSeat=[[UILabel alloc]initWithFrame:CGRectMake(23+i*85, 25, 75, 15)];
//        
//        if (i==4) {
//            selectedSeat.frame=CGRectMake(23, 42, 75, 15);
//        }
//        selectedSeat.textAlignment=1;
//        selectedSeat.layer.borderWidth=0.5;
//        selectedSeat.layer.borderColor=[[UIColor lightGrayColor]CGColor];
//        selectedSeat.font=[UIFont fontWithName:@"Helvetica" size:13.0];
//        [bottomView addSubview:selectedSeat];
//    }
    NSInteger i;
    i=seatArray.count;
    if (i<1 || i>5) {
        
    }else{
    if (but.selected==YES) {
        
    }else if (but.selected==NO){
    UILabel *selectedSeat;
        selectedSeat=[[UILabel alloc]initWithFrame:CGRectMake(i*85-67, 35, 75, 15)];
        selectedSeat.textAlignment=1;
        selectedSeat.layer.borderColor=[[UIColor lightGrayColor]CGColor];
        selectedSeat.layer.borderWidth=0.5;
        selectedSeat.text=[NSString stringWithFormat:@"%@",seatArray[i-1]];
        selectedSeat.font=[UIFont fontWithName:@"Helvetica" size:13.0];
        [bottomView addSubview:selectedSeat];
        [seatDict setObject:selectedSeat forKey:pai];
    }
        }
    NSLog(@"%@",seatDict);
}
-(void)removeSeat{
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
