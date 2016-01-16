//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"
#import "Kitchen.h"

@implementation BadManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
   
    for (NSString *anchovies in toppings) {
        if ([anchovies isEqualToString:@"anchovies"]) {
            return NO;
        }
    }
    return  YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

@end
