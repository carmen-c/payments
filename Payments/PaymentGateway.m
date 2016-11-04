//
//  PaymentGateway.m
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(void) processPaymentAmount: (NSInteger) paymentAmount{
    
    if ([self.paymentDelegate canProcessPayment] == YES) {
        [self.paymentDelegate processPaymentAmount:paymentAmount];
        
    }else{
        NSLog(@"can't process payment");
    }
}

@end
