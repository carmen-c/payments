//
//  PaypalPaymentService.h
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"

@interface PaypalPaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;

@end
