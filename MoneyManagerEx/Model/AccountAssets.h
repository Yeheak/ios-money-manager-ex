//
//  AccountAssets.h
//  MoneyManagerEx
//
//  Created by taoyuxuan on 14/11/2.
//  Copyright (c) 2014 taoyuxuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AccountAssets : NSObject

@property (nonatomic, strong) NSString *accountId;
@property (nonatomic, strong) NSString *accountName;
@property (nonatomic, strong) NSNumber *assets;

@end
