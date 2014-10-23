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
    
    
    for (NSInteger counter = number; counter <= otherNumber; counter++)
    {
        
        start = [NSString stringWithFormat:@"%@%i", start, counter];
        
    }
 
    return start;
}

@end
