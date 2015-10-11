//
//  SelectCinemaTableViewCell.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/8.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "SelectCinemaTableViewCell.h"

@implementation SelectCinemaTableViewCell

- (void)awakeFromNib {
    // Initialization code
    
    self.sv.showsHorizontalScrollIndicator=NO;
    self.sv.backgroundColor=[UIColor clearColor];
    self.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    
    sp=[[SeatPageViewController alloc]init];
    NSMutableArray *fNameArray=[[NSMutableArray alloc]initWithArray:@[@"13:00",@"15:00",@"16:00",@"19:00",@"21:00",@"23:30"]];
    NSMutableDictionary *fPriceDict=[[NSMutableDictionary alloc]initWithObjects:@[@"￥45",@"￥37",@"￥39",@"￥43",@"￥43",@"￥35"] forKeys:fNameArray];
    for (int i=0; i<fNameArray.count; i++) {
        fTimeView=[[UIView alloc]initWithFrame:CGRectMake(10+75*i, 10, 65, 65)];
        fTimeView.layer.borderWidth=0.5;
        fTimeView.layer.borderColor=[[UIColor lightGrayColor]CGColor];
        fTimeView.backgroundColor=[UIColor whiteColor];
        [self.sv addSubview:fTimeView];
        UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleGesture:)];
        tap.numberOfTapsRequired=1;
        [fTimeView addGestureRecognizer:tap];
        UILabel *filmname=[[UILabel alloc]initWithFrame:CGRectMake(0, 5, 65, 20)];
        filmname.textAlignment=1;
        filmname.text=fNameArray[i];
        [fTimeView addSubview:filmname];
        UILabel *filmtype=[[UILabel alloc]initWithFrame:CGRectMake(0, 30, 65, 10)];
        filmtype.textAlignment=1;
        filmtype.text=@"国语/2D";
        filmtype.font=[UIFont fontWithName:@"Helvetica" size:11.0];
        filmtype.textColor=[UIColor lightGrayColor];
        [fTimeView addSubview:filmtype];
        UILabel *filmPrice=[[UILabel alloc]initWithFrame:CGRectMake(0, 45, 65, 20)];
        filmPrice.textAlignment=1;
        filmPrice.text=fPriceDict[fNameArray[i]];
        filmPrice.textColor=[UIColor orangeColor];
        [fTimeView addSubview:filmPrice];
    }
    CGFloat bottom=fTimeView.frame.origin.x;
    self.sv.contentSize=CGSizeMake(bottom+75, 75);
   
    
}

-(void)handleGesture:(UITapGestureRecognizer *)gesture{
    NSLog(@"Yo");
    if (self.delegate && [self.delegate respondsToSelector:@selector(doClickNext)]) {
        [self.delegate doClickNext];
    }

}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
