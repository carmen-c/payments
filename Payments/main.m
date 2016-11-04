//
//  main.m
//  Payments
//
//  Created by carmen cheng on 2016-11-04.
//  Copyright © 2016 carmen cheng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        InputHandler *inputhandler= [[InputHandler alloc]init];
        
        int lower = 100;
        int upper = 1001;
        int randomNumber = lower + arc4random() % (upper - lower);
    
        
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%ld Please select your payment\n method: 1: Paypal, 2: Stripe, 3: Amazon", (long)randomNumber);
        
//        NSLog(@"%d", (int)[inputhandler paymentMethod]);
        
        PaymentGateway *paymentGateway = [[PaymentGateway alloc]init];
//        [paymentGateway processPaymentAmount:randomNumber];
        
        if ([inputhandler paymentMethod] == 1) {
            PaypalPaymentService *paypal = [[PaypalPaymentService alloc]init];
            paymentGateway.paymentDelegate = paypal;
            [paymentGateway processPaymentAmount:randomNumber];
            
        }else if ([inputhandler paymentMethod] == 2){
            StripePaymentService *stripe = [[StripePaymentService alloc]init];
            paymentGateway.paymentDelegate = stripe;
            [paymentGateway processPaymentAmount:randomNumber];
            
        }else if ([inputhandler paymentMethod] == 3){
            AmazonPaymentService *amazon = [[AmazonPaymentService alloc]init];
            paymentGateway.paymentDelegate = amazon;
            [paymentGateway processPaymentAmount:randomNumber];
            
        }else{
            NSLog(@"invalid method");
        }
        
        
    }
    return 0;
}

