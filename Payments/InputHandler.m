//
//  InputHandler.m
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSInteger) paymentMethod {
    
    char input [255];
    fgets(input, 255, stdin);
    
//    convert input to int
    NSString *paymentMethod = [NSString stringWithCString:input
                                         encoding:NSUTF8StringEncoding];
    paymentMethod = [paymentMethod stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    NSInteger choosePaymentMethod = [paymentMethod intValue];

    return choosePaymentMethod;
}

@end
