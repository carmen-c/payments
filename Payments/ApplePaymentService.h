//
//  ApplePaymentService.h
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "PaymentGateway.h"

@interface ApplePaymentService : NSObject <PaymentDelegate>

-(void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;
@end
