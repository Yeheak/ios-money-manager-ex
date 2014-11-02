//
//  ViewController.m
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/10/19.
//  Copyright (c) 2014 taoyuxuan. All rights reserved.
//

#import "MMEXFirstAccountViewController.h"
#import "MMEXProductHelper.h"
#import "AccountAssets.h"

@interface MMEXFirstAccountViewController ()

@property (nonatomic, strong) NSMutableArray *accountsTableData;

@end

@implementation MMEXFirstAccountViewController
@synthesize accounts;
@synthesize incomeLabel;
@synthesize outcomeLabel;
@synthesize balanceLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = NSLocalizedString( @"MONEY_MANAGER", nil );
    accounts.contentInset = UIEdgeInsetsZero;
    
    // test data...........
    _accountsTableData = [[NSMutableArray alloc] init];
    for ( int i = 0; i < 10; i++ ) {
        AccountAssets *tmp = [[AccountAssets alloc] init];
        tmp.accountId = @"100001";
        tmp.accountName = NSLocalizedString(@"TEST_NAME", nil);
        tmp.assets = [[NSNumber alloc] initWithFloat:700.0];
        [_accountsTableData addObject:tmp];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark --
#pragma mark TableView Delegate and Datasource
#pragma mark --
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView
titleForHeaderInSection:(NSInteger)section
{
    return NSLocalizedString(@"ALL_ACCOUNTS_TITLE", nil);
}

- (NSInteger)tableView:(UITableView *)tableView
 numberOfRowsInSection:(NSInteger)section
{
    return [_accountsTableData count];
}

- (CGFloat)tableView:(UITableView *)tableView
heightForHeaderInSection:(NSInteger)section
{
    return 30;
}

- (UIView *)tableView:(UITableView *)tableView
viewForHeaderInSection:(NSInteger)section
{
    UIView *headerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 288, 30)];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(15, 7, 290, 16)];
    [title setText:NSLocalizedString(@"FIRST_ACCOUTNS_TABLE_HEADER_TITLE", nil)];
    [title setFont:[UIFont fontWithName:@"HiraKakuProN-W3" size:16.0]];
    [headerView addSubview:title];
    headerView.backgroundColor = [UIColor colorWithRed:244.0/255.0 green:244.0/255.0 blue:244.0/255.0 alpha:1];
    
    return headerView;
}

- (UITableViewCell *)tableView:(UITableView *)tableView
         cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"AccountCellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:cellIdentifier];
        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
    }
    
    AccountAssets *data = [_accountsTableData objectAtIndex:indexPath.row];
    [cell.textLabel setText:data.accountName];
    NSString *assets = NSLocalizedString(@"TOTAL_ASSETS_TITLE", nil);
    NSString *result = [assets stringByAppendingString:[data.assets stringValue]];
    [cell.detailTextLabel setText:result];
    
    return cell;
}

@end
