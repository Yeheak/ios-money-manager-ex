//
//  MMEXSetAccountTypeTableViewController.m
//  MoneyManagerEx
//
//  Created by taotao on 14/11/30.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import "MMEXSetAccountTypeTableViewController.h"

@implementation MMEXSetAccountTypeTableViewController
@synthesize currentType;
@synthesize delegate;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"SET_ACCOUNT_TYPE_PAGE_TITLE", nil);
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    NSIndexPath *selectIndexPath = [NSIndexPath indexPathForRow:currentType inSection:0];
    UITableViewCell *selectRow = [self.tableView cellForRowAtIndexPath:selectIndexPath];
    selectRow.accessoryType = UITableViewCellAccessoryCheckmark;
    [selectRow setSelected:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view delegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    //1. reverse select the old selected row.
    UITableViewCell *oldCell = [tableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:currentType inSection:0]];
    oldCell.accessoryType = UITableViewCellAccessoryNone;
    [oldCell setSelected:NO];
    
    //2. select the current selected row.
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryCheckmark;
    [cell setSelected:YES];
    
    NSString *title = cell.textLabel.text;
    [delegate setAccountTypeResult:(EnumAccountType)indexPath.row withShow:title];
    
    currentType = indexPath.row;
    
    [self.navigationController popViewControllerAnimated:YES];
}

@end
