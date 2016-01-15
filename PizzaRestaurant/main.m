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

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        
        while (TRUE) {
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"Input was %@", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            
            NSArray *commandWords = [inputString componentsSeparatedByString:@" "];
            NSString *sizeString = commandWords.firstObject;
            NSMutableArray *commandWordsCopy = [commandWords mutableCopy];
            [commandWordsCopy removeObjectAtIndex:0];
            NSArray *toppings = commandWordsCopy;
            
            // And then send some message to the kitchen...
            
            PizzaSize aSize = [Pizza selector:sizeString];
            Pizza *pizza1 = [restaurantKitchen makePizzaWithSize:aSize andToppings:toppings];
            
            NSLog(@"Your order: %@ pizza with the followiing toppins: %@", sizeString, pizza1.toppings);
            
        }

    }
    return 0;
}

