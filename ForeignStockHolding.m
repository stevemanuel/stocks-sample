//
//  ForeignStockHolding.m
//  Stocks
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import "ForeignStockHolding.h"

@implementation ForeignStockHolding
@synthesize conversionRate;

- (float)costInDollars
{
    float localCost = [super costInDollars];
    return localCost * [self conversionRate];
}

- (float)valueInDollars
{
    float localValue = [super valueInDollars];
    return localValue * [self conversionRate];
}
@end
