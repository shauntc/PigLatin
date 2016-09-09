//
//  main.m
//  PigLatin
//
//  Created by Shaun Campbell on 2016-09-09.
//  Copyright © 2016 Shaun Campbell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputCollector.h"
#import "NSString+PigLatin.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        while (YES) {
        
        
        NSString *userInput = [InputCollector inputForPrompt:@"What would you like to translate to Pig Latin?"];
        
        NSLog(@"%@",[userInput stringByPigLatinization ]);
        
        }
        
        
    }
    return 0;
}
