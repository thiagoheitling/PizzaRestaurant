//
//  GoodManager.m
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "GoodManager.h"
#import "DeliveryService.h"

@implementation GoodManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    return  YES;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    [self.delivery deliverPizza:pizza];
    NSLog(@"We upgraded your pizza for free!");
}

@end
