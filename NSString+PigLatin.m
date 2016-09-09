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
        if([word doubleValue] == 0 && ![word isEqualToString:@"0"])
        {
            NSString *word2 = [[word stringByTrimmingCharactersInSet:[NSCharacterSet punctuationCharacterSet]] stringByAppendingString:@"~"];
            
            NSString *otherLetters = [word2 stringByTrimmingCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"bBcBdDfFgGhHjJkKlLmMnNpPqQrRsStTvVwWxXzZ"]];
            
            NSString *consonants = [word2 stringByReplacingOccurrencesOfString:otherLetters withString:@""];
            
            otherLetters = [otherLetters stringByReplacingOccurrencesOfString:@"~" withString:@""];
            
            pigLatin = [pigLatin stringByAppendingFormat:@"%@%@ay ", otherLetters, consonants];
        }
        else
        {
            pigLatin = [pigLatin stringByAppendingFormat:@"%@ ", word];
        }
    }
    
    
    
    
    return pigLatin;
}

@end
