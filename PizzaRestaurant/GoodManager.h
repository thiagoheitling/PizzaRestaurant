//
//  GoodManager.h
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-15.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "KitchenDelegate.h"

@class DeliveryService;

@interface GoodManager : NSObject<KitchenDelegate>

@property(nonatomic, strong) DeliveryService *delivery;

-(void)kitchenDidMakePizza:(Pizza *)pizza;

@end
