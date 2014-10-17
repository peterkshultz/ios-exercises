//
//  AwesomeCounter.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "AwesomeCounter.h"

@implementation AwesomeCounter

- (NSString *) stringWithNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {

    if (number > otherNumber)
    {
        number = number + otherNumber;
        otherNumber = number - otherNumber;
        number = number - otherNumber;
    }
    
    NSString* start = @"";
    
    NSMutableString* name = [NSMutableString stringWithString: start];
    
    for (NSInteger counter = number; counter <= otherNumber; counter++)
    {
        NSString* update = [NSString stringWithFormat:@"%ld", (long)counter];
        
        [name appendString: update];
    }
 
    return name;
}

@end
