//
//  GoodManager.m
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "GoodManager.h"

@implementation GoodManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return  YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}


@end
