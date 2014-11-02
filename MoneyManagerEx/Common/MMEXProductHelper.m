//
//  MMEXProductHelper.m
//  MoneyManagerEx
//
//  Created by taotao on 14/10/31.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#import "MMEXProductHelper.h"

@implementation MMEXProductHelper

+ (NSString*)getPreferredLanguage
{
    
    NSUserDefaults * defaults = [NSUserDefaults standardUserDefaults];
    
    NSArray * allLanguages = [defaults objectForKey:@"AppleLanguages"];
    
    NSString * preferredLang = [allLanguages objectAtIndex:0];
    
    NSLog(@"current language:%@", preferredLang);
    
    return preferredLang;
}

@end
