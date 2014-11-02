//
//  ViewController.h
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/10/19.
//  Copyright (c) 2014 taoyuxuan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MMEXFirstAccountViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, strong) IBOutlet UITableView *accounts;

#pragma mark -- 
#pragma summary IBOutlet
#pragma mark --
@property (nonatomic, strong) IBOutlet UILabel *incomeLabel;
@property (nonatomic, strong) IBOutlet UILabel *outcomeLabel;
@property (nonatomic, strong) IBOutlet UILabel *balanceLabel;

@end

