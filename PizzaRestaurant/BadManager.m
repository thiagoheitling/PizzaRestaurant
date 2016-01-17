//
//  BadManager.m
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "BadManager.h"
#import "DeliveryService.h"

@implementation BadManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray *)toppings {
    
    BOOL shouldMakePizza = YES;
    
    for (NSString *anchovies in toppings) {
        if ([anchovies isEqualToString:@"anchovies"]) {
            shouldMakePizza = NO;
        }
    }
    return  shouldMakePizza;
}

-(BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen {
    return NO;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza {
    [self.delivery deliverPizza:pizza];
    NSLog(@"We didn't upgrade your pizza for free!");
}

@end
