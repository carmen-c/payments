//
//  ApplePaymentService.m
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void) processPaymentAmount: (NSInteger) paymentAmount{
    NSLog(@"apple payment processed: $%ld", (long)paymentAmount);
}

- (BOOL) canProcessPayment{

    NSInteger number = arc4random_uniform(1) +0;
    
    if (number == 0) {
        return YES;
    }else{
        return NO;
    }
}

@end
