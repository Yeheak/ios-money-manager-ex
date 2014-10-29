//
//  ViewController.m
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/10/19.
//  Copyright (c) 2014 taoyuxuan. All rights reserved.
//

#import "MMEXFirstAccountViewController.h"

@interface MMEXFirstAccountViewController ()

@end

@implementation MMEXFirstAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    UIAlertView *launchAlert=[[UIAlertView alloc]initWithTitle:@""
//                                                       message:NSLocalizedString(@"ALERT_MSG", nil)
//                                                      delegate:self
//                                             cancelButtonTitle:NSLocalizedString(@"CANCEL_BUTTON", nil)
//                                             otherButtonTitles:nil, nil];
//    
//    [launchAlert show];
    self.title = NSLocalizedString( @"MONEY_MANAGER", nil );
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
