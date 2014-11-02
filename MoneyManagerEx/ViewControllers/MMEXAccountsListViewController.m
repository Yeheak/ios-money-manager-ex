//
//  MMEXAccountsListViewController.m
//  MoneyManagerEx
//
//  Created by taotao on 14/10/24.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import "MMEXAccountsListViewController.h"

@interface MMEXAccountsListViewController ()

@end

@implementation MMEXAccountsListViewController
@synthesize accounts;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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

#pragma mark --
#pragma table view delegate and datasource
#pragma mark -- 
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section
{
    return @"";
}

@end
