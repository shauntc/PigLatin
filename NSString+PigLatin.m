//
//  NSString+PigLatin.m
//  PigLatin
//
//  Created by Shaun Campbell on 2016-09-09.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import "NSString+PigLatin.h"

@implementation NSString (PigLatin)

-(NSString *)stringByPigLatinization
{
    NSArray *words = [self componentsSeparatedByString:@" "];
    
    NSString *pigLatin = @"";
    
    
    for (NSString *word in words)
    {
        
        NSString *otherLetters = [[[word stringByAppendingString:@"~"] stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"bBcBdDfFgGhHjJkKlLmMnNpPqQrRsStTvVxXzZ"]] stringByReplacingOccurrencesOfString:@"~" withString:@""];
        
        NSString *consonants = [word stringByReplacingOccurrencesOfString:otherLetters withString:@""];
        
        pigLatin = [pigLatin stringByAppendingFormat:@"%@%@ay ", otherLetters, consonants];
    }
    
    
    
    
    return pigLatin;
}

@end
