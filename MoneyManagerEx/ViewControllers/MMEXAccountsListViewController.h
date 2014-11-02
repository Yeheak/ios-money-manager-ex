//
//  MMEXAccountsListViewController.h
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/10/24.
//  Copyright (c) 2014年 taoyuxuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMEXAccountsListViewController : UIViewController<UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, strong) IBOutlet UITableView *accounts;

@end
