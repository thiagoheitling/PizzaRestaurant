//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DeliveryCar.h"

@class GoodManager;
@class BadManager;
@class Pizza;

@interface DeliveryService : NSObject

@property(nonatomic, strong) NSMutableArray *pizzasDelivered;
@property(nonatomic, strong) DeliveryCar *car;

-(void)deliverPizza:(Pizza *)pizza;

@end
