//
//  StarTrekDictionaries.m
//  BlocExercises
//
//  Created by Aaron on 6/10/14.
//
//

#import "StarTrekDictionaries.h"

@implementation StarTrekDictionaries

- (NSString *)favoriteDrinkForStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    /**
     Determines the favorite drink of a given Star Trek character.
     
     Example @c characterDictionary:
     
     @code
     {
     "name": "Nog",
     "rank": "Lieutenant junior grade",
     "information": "the first Ferengi to enter Starfleet",
     "favorite drink": "root beer",
     "quote": "Hear all, trust nothing."
     }
     @endcode
     
     Example expected output: @"root beer"
     
     @param characterDictionary An NSDictionary containing values for one or more of these keys: @"name", @"rank", @"information", @"favorite drink", and @"quote".
     
     @return The character's favorite drink, or @c nil if it's not provided.
     */

    NSString* favoriteDrink = [(characterDictionary)objectForKey:(id)@"favorite drink"];
    return favoriteDrink;
}

- (NSArray *)arrayOfFavoriteDrinksForStarTrekCharacters:(NSArray *)charactersArray {
    
    /**
     Determines the favorite drinks of an array of given Star Trek characters.  Useful for party planning.
     
     @param charactersArray An array of dictionaries as defined in @c favoriteDrinkForStarTrekCharacterDictionary:.
     
     @return An array of favorite drinks.
     */
    
    NSMutableArray* favoriteDrinkArray = [[NSMutableArray alloc] init];
    NSArray* returnArray;
    NSString* stringToAdd;
    
    for (NSDictionary* dictionary in charactersArray)
    {
        stringToAdd = [(dictionary)valueForKey:(id)@"favorite drink"];
        
        [favoriteDrinkArray addObject:stringToAdd];
    }
    
    returnArray = [favoriteDrinkArray copy];
    
    return returnArray;
}

- (NSDictionary *)dictionaryWithQuoteAddedToStarTrekCharacterDictionary:(NSDictionary *)characterDictionary {
    
    /**
     Adds a quote to an existing character.
     
     @param characterDictionary A dictionary as defined in @c favoriteDrinkForStarTrekCharacterDictionary: without a value for @"quote".
     
     @return A dictionary containing all of the key/value pairs provided, plus a memorable quote.
     */
    
    NSMutableDictionary* editableDictionary = [characterDictionary mutableCopy];
    NSDictionary* returnDictionary;
 
    [editableDictionary setObject:@"Objective-C is a cumbersome language" forKey:@"quote"];
    
    returnDictionary = [editableDictionary copy];
    
    
    return returnDictionary;
}

@end
