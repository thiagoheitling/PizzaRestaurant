//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"

@interface DeliveryService ()

@end

@implementation DeliveryService

- (instancetype)init
{
    self = [super init];
    if (self) {
        _pizzasDelivered = [[NSMutableArray alloc]init];
        _car = [[DeliveryCar alloc]init];
    }
    return self;
}

-(void)deliverPizza:(Pizza *)pizza {
    
    [self.pizzasDelivered addObject:pizza];
    [self.car deliverPizza:pizza];
    
}


-(NSString *)description {
    
    return self.pizzasDelivered.description;
}



@end
