//
//  Portfolio.h
//  Stocks
//
//  Created by Steve Manuel on 12/4/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import <Foundation/Foundation.h>
@class StockHolding;

@interface Portfolio : NSObject
@property NSMutableArray *stocks;

- (void)addToPortfolio:(StockHolding *)stock;

- (float)portfolioValue;

@end
