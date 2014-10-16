//
//  StringCheese.m
//  BlocExercises
//
//  Created by Aaron on 6/9/14.
//
//

#import "StringCheese.h"

@implementation StringCheese

- (NSString *) favoriteCheeseStringWithCheese:(NSString *)cheeseName {
    
    NSString *fullSentence = [NSString stringWithFormat:@"My favorite cheese is %@.", cheeseName];

    
    return fullSentence;
}

- (NSString *) cheeseNameWithoutCheeseSuffix:(NSString *)cheeseName {
    /**
     Removes "cheese" from the end of a string about cheese and only returns
     the name of the cheese.
     
     Example usage:
     
     @code
     NSString *shortName = [cheese cheeseNameWithoutCheeseSuffix:@"mozarella cheese"];
     // shortName is "mozarella"
     @endcode
     
     @param cheeseName
     The name of the favorite cheese
     
     @return Returns the name of the favorite cheese without the word "cheese".
     */
    
    NSRange cheeseRange = [cheeseName rangeOfString:@" cheese" options:NSCaseInsensitiveSearch];
    
    if (cheeseRange.location == NSNotFound)
    {
        return cheeseName;
    }

    NSString *withoutTheCheese = [cheeseName stringByReplacingCharactersInRange:cheeseRange withString:@"" ];
    
    return withoutTheCheese;
}

- (NSString *) numberOfCheesesStringWithCheeseCount:(NSUInteger)cheeseCount {
    if (cheeseCount == 1) {
        
        return @"1 cheese";
        
        
    } else {
        
        NSInteger number = cheeseCount;
        
//        NSString* horribleStatement = [NSString stringWithFormat:@"%i cheeses %@", number, @"are old and moldy"];
//    
//        
//        NSLog(@"%@", horribleStatement);
        
        NSString *result = [NSString stringWithFormat:@"%i cheeses", number];
        
        return result;
        
    }
    
    /*
     (You will learn more about if/else statements in the next checkpoint.)
     */
    
   // return nil;
}

@end
