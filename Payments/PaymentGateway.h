//
//  PaymentGateway.h
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate
-(void) processPaymentAmount: (NSInteger) paymentAmount;
- (BOOL) canProcessPayment;
@end

@interface PaymentGateway : NSObject
@property (nonatomic, weak) id<PaymentDelegate> paymentDelegate;
-(void) processPaymentAmount: (NSInteger) paymentAmount;
@end


