//
//  MMEXSetAccountStatusTableViewController.h
//  MoneyManagerEx
//
//  Created by taotao on 14/11/30.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TypeDef.h"
#import "MMEXPageJumpProtocol.h"

@interface MMEXSetAccountStatusTableViewController : UITableViewController

@property (nonatomic, assign) EnumAccountStatus                  currentStatus;
@property (nonatomic, weak)   id<SetAccountStatusResultDelegate> delegate;

@end
