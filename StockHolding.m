//
//  StockHolding.m
//  Stocks
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import "StockHolding.h"

@implementation StockHolding
@synthesize currentSharePrice, purchaseSharePrice, numberOfShares, nameOfStock;

- (float)costInDollars
{
    return [self purchaseSharePrice] * [self numberOfShares];
}

-(float)valueInDollars
{
    return [self currentSharePrice] * [self numberOfShares];
}

@end
