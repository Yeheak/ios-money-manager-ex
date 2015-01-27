//
//  MMEX_Payee.h
//  MoneyManagerEx
//
//  Created by Guan Lisheng on 15/1/27.
//  Copyright (c) 2015年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface MMEX_Payee : NSManagedObject

@property (nonatomic, retain) NSNumber * categid;
@property (nonatomic, retain) NSNumber * payeeid;
@property (nonatomic, retain) NSString * payeename;
@property (nonatomic, retain) NSNumber * subcategid;

@end
