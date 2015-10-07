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
    
}
#pragma mark - UITableViewDataSource
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 1;
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:nil];
    if (indexPath.section==0) {
        cell.textLabel.text=@"和平影都";
        
    }else if(indexPath.section==1){
        cell.textLabel.text=@"江桥万达影城";
        
    }else if (indexPath.section==2){
            cell.textLabel.text=@"金逸影城";
    }else if (indexPath.section==3){
        cell.textLabel.text=@"环艺影城";
    }
    cell.accessoryType=UITableViewCellAccessoryDisclosureIndicator;
  
    return cell;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 4;
}
#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

@end
