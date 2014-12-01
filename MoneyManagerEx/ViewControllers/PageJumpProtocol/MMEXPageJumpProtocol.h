//
//  MMEXPageJumpProtocol.h
//  MoneyManagerEx
//
//  Created by taotao on 14/11/30.
//  Copyright (c) 2014年 taotao. All rights reserved.
//

#ifndef MoneyManagerEx_MMEXPageJumpProtocol_h
#define MoneyManagerEx_MMEXPageJumpProtocol_h

#import "TypeDef.h"

@protocol SetAccountTypeResultDelegate <NSObject>

@required
- (void)setAccountTypeResult:(EnumAccountType)result withShow:(NSString *)showStr;

@end

@protocol SetAccountStatusResultDelegate <NSObject>

@required
- (void)setAccountStatusResult:(EnumAccountStatus)result withShow:(NSString *)showStr;

@end

#endif
