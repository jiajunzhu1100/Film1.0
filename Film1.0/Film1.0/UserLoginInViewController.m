//
//  UserLoginInViewController.m
//  Film1.0
//
//  Created by zjj on 15/10/6.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "UserLoginInViewController.h"

@interface UserLoginInViewController ()

@end

@implementation UserLoginInViewController


#pragma mark - Lifecycle


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self initBGView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Custom Accessors
-(void)initBGView{
    saveBgView=[NSMutableArray arrayWithArray:@[@"1212.jpg",@"2323.jpg",@"gangjiong.jpg",@"zhuiai.jpg"]];
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:@"1212.jpg"]]];
    x=1;
    [NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(changeBgView:) userInfo:nil repeats:YES];
    
    
    //init PNG
    gwlPNG.layer.masksToBounds=YES;
    gwlPNG.layer.cornerRadius=12;
    
    //init txtField
    
    
}
#pragma mark - IBActions
- (IBAction)backView:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma mark - Public


#pragma mark - Private
-(void)changeBgView:(NSTimer *)timer{
    
    
    [self.view setBackgroundColor:[UIColor colorWithPatternImage:[UIImage imageNamed:saveBgView[x]]]];
    x++;
    if (x>saveBgView.count) {
        x=0;
    }
}

#pragma mark - Protocol conformance

#pragma mark - UITextFieldDelegate

#pragma mark - UITableViewDataSource

#pragma mark - UITableViewDelegate
#pragma mark - NSCopying


#pragma mark - NSObject

@end
