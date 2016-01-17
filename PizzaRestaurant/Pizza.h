//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef enum size {
    small,
    medium,
    large,
}PizzaSize;

@property (nonatomic) NSArray *toppings;

@property (nonatomic) PizzaSize size;

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings;

+(PizzaSize)selector:(NSString *)sizeString;

@end
