//
//  MMEX_Category.h
//  MoneyManagerEx
//
//  Created by Guan Lisheng on 15/1/27.
//  Copyright (c) 2015年 taotao. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class MMEX_Subcategory;

@interface MMEX_Category : NSManagedObject

@property (nonatomic, retain) NSNumber * categid;
@property (nonatomic, retain) NSString * categname;
@property (nonatomic, retain) NSOrderedSet *subcategories;
@end

@interface MMEX_Category (CoreDataGeneratedAccessors)

- (void)insertObject:(MMEX_Subcategory *)value inSubcategoriesAtIndex:(NSUInteger)idx;
- (void)removeObjectFromSubcategoriesAtIndex:(NSUInteger)idx;
- (void)insertSubcategories:(NSArray *)value atIndexes:(NSIndexSet *)indexes;
- (void)removeSubcategoriesAtIndexes:(NSIndexSet *)indexes;
- (void)replaceObjectInSubcategoriesAtIndex:(NSUInteger)idx withObject:(MMEX_Subcategory *)value;
- (void)replaceSubcategoriesAtIndexes:(NSIndexSet *)indexes withSubcategories:(NSArray *)values;
- (void)addSubcategoriesObject:(MMEX_Subcategory *)value;
- (void)removeSubcategoriesObject:(MMEX_Subcategory *)value;
- (void)addSubcategories:(NSOrderedSet *)values;
- (void)removeSubcategories:(NSOrderedSet *)values;
@end
