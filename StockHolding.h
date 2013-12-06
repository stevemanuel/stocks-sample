//
//  StockHolding.h
//  Stocks
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface StockHolding : NSObject
@property float purchaseSharePrice;
@property float currentSharePrice;
@property int numberOfShares;
@property NSString *nameOfStock;

- (float)costInDollars;
- (float)valueInDollars;
@end
