//
//  DetailtoCinemaViewController.m
//  Film1.0
//
//  Created by 郭正豪 on 15/10/7.
//  Copyright © 2015年 郭正豪. All rights reserved.
//

#import "DetailtoCinemaViewController.h"

@interface DetailtoCinemaViewController ()

@end

@implementation DetailtoCinemaViewController

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
    table.delegate=self;
    table.dataSource=self;
    [table setBackgroundColor:[UIColor colorWithRed:245/255.0 green:245/255.0 blue:245/255.0 alpha:1]];
    self.navigationController.toolbarHidden=YES;
    self.navigationController.navigationBarHidden=NO;
   }

#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    SelectCinemaTableViewCell *sccell=(SelectCinemaTableViewCell *)[tableView dequeueReusableCellWithIdentifier:@"sccell"];
    if (sccell==nil) {
        NSArray *nib=[[NSBundle mainBundle]loadNibNamed:@"SelectCinemaTableViewCell" owner:self options:nil];
        sccell=[nib objectAtIndex:0];
    }
    sccell.delegate=self;
    return sccell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 150;
}
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}
-(void)doClickNext{
    sp=[[SeatPageViewController alloc]init];
    [self.navigationController pushViewController:sp animated:YES];
}
@end
