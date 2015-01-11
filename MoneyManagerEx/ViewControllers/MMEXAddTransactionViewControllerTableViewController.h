//
//  MMEXAddTransactionViewControllerTableViewController.h
//  MoneyManagerEx
//
//  Created by taotao on 14/12/9.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AMSlideMenuLeftTableViewController.h"

typedef enum
{
    AddTransactionFromView_Other = 0,
    AddTransactionFromView_TransactionList,
}AddTransactionFromView;

typedef enum
{
    AddTransactionType_Add = 0,
    AddTransactionType_Edit,
    AddTransactionType_Search,
}AddTransactionType;

@interface MMEXAddTransactionViewControllerTableViewController : UITableViewController

@property (nonatomic, assign) AddTransactionFromView fromType;
@property (nonatomic, assign) AddTransactionType     viewType;

@end
