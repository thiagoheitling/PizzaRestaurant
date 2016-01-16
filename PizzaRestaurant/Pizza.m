//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Thiago Heitling on 2016-01-14.
//  Copyright © 2016 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype)initWithPizzaSize:(PizzaSize)size andToppings:(NSArray *)toppings
{
    self = [super init];
    if (self) {
        
        _size = size;
        _toppings = toppings;
        
    }
    
    return self;
}

+(PizzaSize)selector:(NSString *)sizeString {
    
    if([sizeString isEqualToString:@"large"]) {
        
        return large;
    }
    
    else if ([sizeString isEqualToString:@"medium"]) {
        
        return medium;
    }
    
    else  {
        
        return small;
    }
}

-(NSString *)sizeAsString {
    
    if(self.size == small) {
        
        return @"small";
    }
    
    else if (self.size == medium) {
        
        return @"medium";
    }
    
    else  {
        
        return @"large";
    }
    
    
    //return sizeAsString;
    
}

@end
