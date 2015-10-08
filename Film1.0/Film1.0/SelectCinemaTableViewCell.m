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
    CGFloat bottom=self.view6.frame.origin.x;
    self.sv.contentSize=CGSizeMake(bottom+75, 75);
    self.sv.showsHorizontalScrollIndicator=NO;
    self.sv.backgroundColor=[UIColor clearColor];
    self.backgroundColor=[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1];
    self.view1.layer.borderWidth=self.view2.layer.borderWidth=self.view3.layer.borderWidth=self.view4.layer.borderWidth=self.view5.layer.borderWidth=self.view6.layer.borderWidth=1;
    self.view1.layer.borderColor=self.view2.layer.borderColor=self.view3.layer.borderColor=self.view4.layer.borderColor=self.view5.layer.borderColor=self.view6.layer.borderColor=[[UIColor lightGrayColor]CGColor];
    UITapGestureRecognizer *tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(handleGesture:)];
    tap.numberOfTapsRequired=1;
    [self.view1 addGestureRecognizer:tap];
    sp=[[SeatPageViewController alloc]init];
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
