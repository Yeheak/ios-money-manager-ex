//
//  MMEX_Subcategory.h
//  MoneyManagerEx
//
//  Created by Guan Lisheng on 15/1/27.
//  Copyright (c) 2015年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MMEX_Category;

@interface MMEX_Subcategory : NSManagedObject

@property (nonatomic, retain) NSNumber * cateid;
@property (nonatomic, retain) NSNumber * subcategid;
@property (nonatomic, retain) NSString * subcategname;
@property (nonatomic, retain) MMEX_Category *category;

@end
