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
    
    Pizza *aPizza = [[Pizza alloc] initWithPizzaSize:&size andToppings:toppings];
    
    return aPizza;

}

@end
