//
//  StarTrekArrays.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekArrays.h"

@implementation StarTrekArrays

- (NSArray *) arrayOfStarTrekCharactersFromString:(NSString *)characterString {
    
    /**
     Converts a string containing multiple Star Trek characters into an array of said characters.
     
     @param characterString A semicolon-separated string of characters like @"Troi;Riker;Kirk;Janeway"
     
     @return An array of characters, like @[@"Troi", @"Riker", @"Kirk", @"Janeway"]
     */
    
    NSString* theCharacters = characterString;
    
    NSArray* returnArray = [theCharacters componentsSeparatedByString:@";"];
    
    return returnArray;
}

- (NSString *) stringOfStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    /**
     Converts an array of multiple Star Trek characters into a semicolon-separated string of said characters.
     
     @param characterArray An array of characters like @[@"McCoy", @"Tuvok"]
     
     @return A semicolon-separated string like @"McCoy;Tuvok".
     */
    
    NSArray* theArray = characterArray;
    
    NSString* theReturn = [theArray componentsJoinedByString:@";"];
    
    return theReturn;
}

- (NSArray *) alphabeticallySortedStarTrekCharactersFromArray:(NSArray *)characterArray {
    
    /**
     Returns an array of alphabetically sorted character names.
     
     @param characterArray An array of unsorted character names, like @[@"Wesley", @"Q"].
     
     @return A sorted array, like @[@"Q", @"Wesley"].
     */
    
    NSMutableArray* theArray = [characterArray mutableCopy];
    NSArray* returnArray;
    
    NSSortDescriptor* sortDescriptor = [[NSSortDescriptor alloc] initWithKey:nil ascending:YES selector:@selector(localizedCaseInsensitiveCompare:)];
    
    [theArray sortUsingDescriptors:@[sortDescriptor]];
    
    returnArray = theArray;
    
    return returnArray;
}

- (BOOL) characterArrayContainsWorf:(NSArray *)characterArray {
    
    /**
     Indicates whether the provided array of Star Trek characters contains Worf.
     
     @param characterArray An array of character names.
     
     @note Worf should be detected anywhere in the string, in any case.  For example, @"lieutenant commander worf" and @"WORF THE KLINGON" should both cause this method to return @c YES.
     
     @return @c YES if Worf is present in the array, or @c NO if he is not.
     */
    
    NSMutableArray* theArray = [characterArray mutableCopy];
    
    NSPredicate* containsWorf = [NSPredicate predicateWithFormat:@"SELF CONTAINS[c] 'worf' "];
    
    return [theArray filteredArrayUsingPredicate:containsWorf].count > 0;
    
//    for (NSString* strings in theArray)
//    {
//        if ([strings rangeOfString:@"worf" options:NSCaseInsensitiveSearch].location != NSNotFound)
//        {
//            return YES;
//        }
//    }
    
   // return NO;
}

@end
