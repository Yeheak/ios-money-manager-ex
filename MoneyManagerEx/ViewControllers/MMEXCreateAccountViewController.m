//
//  MMEXCreateAccountViewController.m
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/10/19.
//  Copyright (c) 2014 taoyuxuan. All rights reserved.
//

#import "MMEXCreateAccountViewController.h"
#import "MMEXSetAccountStatusTableViewController.h"
#import "MMEXSetAccountTypeTableViewController.h"

@interface MMEXCreateAccountViewController () <SetAccountStatusResultDelegate, SetAccountTypeResultDelegate>

@end

@implementation MMEXCreateAccountViewController
@synthesize accountName;
@synthesize accountType;
@synthesize currencyType;
@synthesize initialMoney;
@synthesize accountStatus;
@synthesize accountNum;
@synthesize merchat;
@synthesize merchatWeb;
@synthesize merchatContact;
@synthesize loginInfo;
@synthesize note;

@synthesize accountTypeEnumValue;
@synthesize accountStatusEnumValue;
@synthesize currencyTypeValue;

@synthesize pageType;
@synthesize editPageTitle;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (pageType != kCreateAccountPageType_NewAccount) {
        self.title = editPageTitle;
    }
    else {
        self.title = NSLocalizedString(@"NEW_ACCOUNT", nil);
    }
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                 target:self
                                                                                 action:@selector(createNewAccount:)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:rightButton, nil];
    
    //init the data.
    accountName.placeholder = NSLocalizedString( @"YOUR_ACCOUNT_NAME", nil);
    [accountStatus setText:NSLocalizedString(@"ACCOUNT_STATUS", nil)];
    accountStatusEnumValue = kAccountStatus_Open;
    accountTypeEnumValue = kAccountType_Check_Deposit_CreditCard;
    currencyTypeValue = 0;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createNewAccount:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
    
    // add to database
}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if([[segue identifier]isEqualToString:@"showAccountType"]){
        MMEXSetAccountTypeTableViewController *setViewCtrller = segue.destinationViewController;
        setViewCtrller.currentType = accountTypeEnumValue;
        setViewCtrller.delegate = self;
    }
    else if ([[segue identifier] isEqualToString:@"showAccountStatus"]) {
        MMEXSetAccountStatusTableViewController *setViewCtrller = segue.destinationViewController;
        setViewCtrller.currentStatus = accountStatusEnumValue;
        setViewCtrller.delegate = self;
    }
    
}

- (void)setAccountTypeResult:(EnumAccountType)result withShow:(NSString *)showStr
{
    accountTypeEnumValue = result;
    [accountType setText:showStr];
}

- (void)setAccountStatusResult:(EnumAccountStatus)result withShow:(NSString *)showStr
{
    accountStatusEnumValue = result;
    [accountStatus setText:showStr];
}

- (IBAction)resignTheKeyBoard:(id)sender
{
    [self resignFirstResponder];
}

- (void)loadEditData
{
    
}

@end
