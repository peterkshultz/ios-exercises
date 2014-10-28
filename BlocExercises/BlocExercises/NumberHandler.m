//
//  NumberHandler.m
//  BlocExercises
//
//  Created by Aaron on 6/11/14.
//
//

#import "NumberHandler.h"

@implementation NumberHandler

- (NSNumber *) numberThatIsTwiceAsBigAsNumber:(NSNumber *)number {
    
    /**
     Doubles a number.
     
     @param number An NSNumber.
     
     @return An NSNumber with double the value of the provided NSNumber.
     */

    NSNumber* returnNumber = number;
    
    returnNumber = @([returnNumber floatValue] * 2);
    
    return returnNumber;
}

- (NSArray *) arrayOfNumbersBetweenNumber:(NSInteger)number andOtherNumber: (NSInteger)otherNumber {
    
    /**
     Creates an array of NSNumbers between two integers, inclusively.
     
     @param number       A number at one end of the range.
     @param otherNumber  The number at the other end of the range.
     
     @note Either @c number or @c otherNumber may be the lower number, but the string always includes numbers from lowest to highest.
     
     @return An array of NSNumbers between two integers, inclusively.
     */
    NSMutableArray* theArray = [[NSMutableArray alloc] init];
    NSNumber* insertIntoArray;
    
    for (NSInteger counter = number; counter <= otherNumber; counter++)
    {
        insertIntoArray = [NSNumber numberWithInt:counter];
        [theArray addObject:insertIntoArray];
    }
    
    return theArray;
}

- (NSInteger) lowestNumberInArray:(NSArray *)arrayOfNumbers {
    
    /**
     Returns the lowest number in an array.
     
     @param arrayOfNumbers An array of NSNumbers.
     
     @return The lowest number in the array as an NSInteger.
     */
    
    NSNumber* min = [arrayOfNumbers valueForKeyPath:@"@min.floatValue"];
    NSInteger returnMin = [min integerValue];

    
    return returnMin;
}

@end
