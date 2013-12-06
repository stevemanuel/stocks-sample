//
//  main.m
//  Stocks
//
//  Created by Steve Manuel on 12/1/13.
//  Copyright (c) 2013 stvmnl. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StockHolding.h"
#import "ForeignStockHolding.h"
#import "Portfolio.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        StockHolding *twtr = [[StockHolding alloc] init];
        [twtr setNameOfStock:@"TWTR"];
        [twtr setCurrentSharePrice:42.2];
        [twtr setNumberOfShares:1000];
        [twtr setPurchaseSharePrice:19.3];
        
        StockHolding *fb = [[StockHolding alloc] init];
        [fb setNameOfStock:@"FB"];
        [fb setCurrentSharePrice:48.6];
        [fb setNumberOfShares:3000];
        [fb setPurchaseSharePrice:28];
        
        StockHolding *rskt = [[StockHolding alloc] init];
        [rskt setNameOfStock:@"RSKT"];
        [rskt setCurrentSharePrice:24.8];
        [rskt setNumberOfShares:1800000];
        [rskt setPurchaseSharePrice:0.20];
        
        ForeignStockHolding *nokia = [[ForeignStockHolding alloc] init];
        [nokia setNameOfStock:@"Nokia"];
        [nokia setCurrentSharePrice:78.90];
        [nokia setNumberOfShares:557];
        [nokia setPurchaseSharePrice:58];
        [nokia setConversionRate:0.75];
        
        NSArray *stocks = [[NSArray alloc] initWithObjects:twtr, fb, rskt, nokia, nil];
        for (StockHolding *s in stocks) {
            NSLog(@"Your stake in %@ cost $%.2f and are now worth $%.2f", [s nameOfStock], [s costInDollars], [s valueInDollars]);
        }
        
        Portfolio *p = [[Portfolio alloc] init];
        for (StockHolding *s in stocks) {
            [p addToPortfolio:s];
        }
        NSLog(@"Portfolio Built! %@", p);
    }
    return 0;
}

