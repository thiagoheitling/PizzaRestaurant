//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "Pizza.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    Pizza *aPizza;
    
    if(!self.delegate) {
        aPizza = [[Pizza alloc] initWithPizzaSize:size andToppings:toppings];
        return aPizza;
    }
    
    else {
        if([self.delegate kitchen:self shouldMakePizzaOfSize:size andToppings:toppings]) {
            PizzaSize targetSize = size;
            
            if ([self.delegate kitchenShouldUpgradeOrder:self]) {
                targetSize = large;
            }
            aPizza = [[Pizza alloc]initWithPizzaSize:targetSize andToppings:toppings];
            
            if ([self.delegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.delegate kitchenDidMakePizza:aPizza];
            }
        }
    }
    return aPizza;
}



@end
