//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"
#import "BadManager.h"
#import "GoodManager.h"
#import "DeliveryCar.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        GoodManager *brian = [[GoodManager alloc] init];
        BadManager *marc = [[BadManager alloc] init];
        DeliveryService *delivery = [[DeliveryService alloc] init];
        
        brian.delivery = delivery;
        marc.delivery = delivery;
        
        while (TRUE) {
            
            NSLog(@"Please pick your pizza size and toppings:");
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Which manager would you like to select? Enter: Brian, Marc or none");
            NSLog(@"> ");
            char str2[100];
            fgets (str2, 100, stdin);
            
            NSString *inputString2 = [[NSString alloc] initWithUTF8String:str2];
            
            if ([inputString2.lowercaseString isEqualToString:@"brian\n"]) {
                restaurantKitchen.delegate = brian;
                NSLog(@"Great! You have chosen the good manager!");
            }
        
            if ([inputString2.lowercaseString isEqualToString:@"marc\n"]) {
                restaurantKitchen.delegate = marc;
                NSLog(@"Ops! You have chosen the bad manager!");
            }
            
            if ([inputString2.lowercaseString isEqualToString:@"none\n"]) {
                restaurantKitchen.delegate = marc;
                NSLog(@"OK! We assigned a bad manager for your :)");
            }
            
            // Take the first word of the command as the size, and the rest as the toppings
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeString = commandWords.firstObject;
            NSMutableArray *commandWordsCopy = [commandWords mutableCopy];
            [commandWordsCopy removeObjectAtIndex:0];
            NSArray *toppings = commandWordsCopy;
            
            // And then send some message to the kitchen...
            
            PizzaSize aSize = [Pizza selector:sizeString];
            [restaurantKitchen makePizzaWithSize:aSize andToppings:toppings];
            
            NSLog(@"DeliveryService log:\n Total of pizzas delivered: %lu\n Details of orders:\n %@", [delivery.pizzasDelivered count], delivery.description);
        }
    }
    return 0;
}

