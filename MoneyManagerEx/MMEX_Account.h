//
//  MMEX_Account.h
//  MoneyManagerEx
//
//  Created by Guan Lisheng on 15/1/31.
//  Copyright (c) 2015年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MMEX_Account : NSManagedObject

@property (nonatomic, retain) NSNumber * accountid;
@property (nonatomic, retain) NSString * accountmae;

@end
