//
//  MMEXAddTransactionViewControllerTableViewController.m
//  MoneyManagerEx
//
//  Created by taotao on 14/12/9.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import "MMEXAddTransactionViewControllerTableViewController.h"
#import "UIViewController+AMSlideMenu.h"

@interface MMEXAddTransactionViewControllerTableViewController ()

- (IBAction)addTransaction:(id)sender;

@end

@implementation MMEXAddTransactionViewControllerTableViewController
@synthesize fromType;
@synthesize viewType;

- (void)viewDidLoad {
    [super viewDidLoad];
    if (AddTransactionType_Add == viewType) {
        self.title = NSLocalizedString(@"ADD_TRANSACTION_TITLE", nil);
    }
    else if (AddTransactionType_Edit == viewType) {
        self.title = NSLocalizedString(@"EDIT_TRANSACTION_TITLE", nil);
    }
    else if (AddTransactionType_Search == viewType) {
        self.title = NSLocalizedString(@"SEARCH_TRANSACTION_TITLE", nil);
    }
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    //self.navigationItem.rightBarButtonItem = self.editButtonItem;
//    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithTitle:NSLocalizedString(@"ADD_TRANSACTION_BTN_TITLE", nil) style:UIBarButtonItemStylePlain target:self action:@selector(addTransaction:)];
//    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:rightButton, nil];
//    self.title = NSLocalizedString(@"ADD_TRANSACTION_TITLE", nil);
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)addTransaction:(id)sender
{
    if (AddTransactionFromView_TransactionList == fromType) {
        [self.navigationController popViewControllerAnimated:YES];
    }
    else {
        AMSlideMenuMainViewController *mainVC= self.navigationController.mainSlideMenu;
        NSIndexPath *indexPath = [NSIndexPath indexPathForRow:3 inSection:0];
        [mainVC openContentViewControllerForMenu:AMSlideMenuLeft atIndexPath:indexPath];
    }
}

#pragma mark - Table view data source

/*
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 0;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return 0;
}
*/
/*
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:<#@"reuseIdentifier"#> forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}
*/

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
