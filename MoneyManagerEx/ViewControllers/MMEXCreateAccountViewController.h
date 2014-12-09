//
//  MMEXCreateAccountViewController.h
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/10/19.
//  Copyright (c) 2014 taoyuxuan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TypeDef.h"

@interface MMEXCreateAccountViewController : UITableViewController

@property (nonatomic, strong) IBOutlet UITextField  *accountName;
@property (nonatomic, strong) IBOutlet UILabel      *accountType;
@property (nonatomic, strong) IBOutlet UILabel      *currencyType;
@property (nonatomic, strong) IBOutlet UITextField  *initialMoney;
@property (nonatomic, strong) IBOutlet UILabel      *accountStatus;
@property (nonatomic, strong) IBOutlet UITextField  *accountNum;
@property (nonatomic, strong) IBOutlet UITextField  *merchat;
@property (nonatomic, strong) IBOutlet UITextField  *merchatWeb;
@property (nonatomic, strong) IBOutlet UITextField  *merchatContact;
@property (nonatomic, strong) IBOutlet UITextField  *loginInfo;
@property (nonatomic, strong) IBOutlet UITextField  *note;

// value
@property (nonatomic, assign) EnumAccountType        accountTypeEnumValue;
@property (nonatomic, assign) EnumAccountStatus      accountStatusEnumValue;
@property (nonatomic, assign) NSInteger              currencyTypeValue;

// data
@property (nonatomic, assign) CreateAccountPageType  pageType;
@property (nonatomic, assign) NSString              *editPageTitle;
// edit page (init data)
//@property (nonatomic, strong) MMEXAccountModel      *eidtAccountData;
 - (void)loadEditData;

- (IBAction)resignTheKeyBoard:(id)sender;

@end
