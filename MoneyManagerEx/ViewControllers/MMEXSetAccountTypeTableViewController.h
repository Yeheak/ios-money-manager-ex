//
//  MMEXSetAccountTypeTableViewController.h
//  MoneyManagerEx
//
//  Created by taotao on 14/11/30.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TypeDef.h"
#import "MMEXPageJumpProtocol.h"

@interface MMEXSetAccountTypeTableViewController : UITableViewController

@property (nonatomic, assign) EnumAccountType                  currentType;
@property (nonatomic, weak)   id<SetAccountTypeResultDelegate> delegate;

@end
