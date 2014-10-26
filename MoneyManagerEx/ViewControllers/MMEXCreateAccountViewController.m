//
//  MMEXCreateAccountViewController.m
//  MoneyManagerEx
//
//  Created by taotao on 14/10/19.
//  Copyright (c) 2014 taotao. All rights reserved.
//

#import "MMEXCreateAccountViewController.h"

@interface MMEXCreateAccountViewController ()

@end

@implementation MMEXCreateAccountViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = NSLocalizedString(@"NEW_ACCOUNT", nil);
    
    UIBarButtonItem *rightButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemDone
                                                                                 target:self
                                                                                 action:@selector(createNewAccount:)];
    
    self.navigationItem.rightBarButtonItems = [NSArray arrayWithObjects:rightButton, nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)createNewAccount:(id)sender
{
    [self.navigationController popViewControllerAnimated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
