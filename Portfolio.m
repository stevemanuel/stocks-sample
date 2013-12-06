//
//  Portfolio.m
//  Stocks
//
//  Created by Steve Manuel on 12/4/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import "Portfolio.h"
#import "StockHolding.h"

@implementation Portfolio

@synthesize stocks;

- (void)addToPortfolio:(StockHolding *)stock
{
    if (!stocks) {
        stocks = [[NSMutableArray alloc] init];
    }
    
    [stocks addObject:stock];
}

- (float)portfolioValue
{
    float sum = 0;
    for (StockHolding *stock in stocks) {
        sum += [stock valueInDollars];
    }
    return sum;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Your portfolio is worth $%f", [self portfolioValue]];
}
@end
