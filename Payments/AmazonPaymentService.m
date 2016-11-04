//
//  AmazonPaymentService.m
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "AmazonPaymentService.h"

@implementation AmazonPaymentService

-(void) processPaymentAmount: (NSInteger) paymentAmount{
    NSLog(@"amazon payment processed: $%ld", (long)paymentAmount);
}

- (BOOL) canProcessPayment{
    int lower = 0;
    int upper = 1;
    NSInteger number = lower + arc4random() % (upper - lower);
    
    if (number == 1) {
        return YES;
    }else{
        return NO;
    }
}

@end
