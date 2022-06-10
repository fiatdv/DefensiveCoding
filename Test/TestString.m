//
//  TestString.m
//  Test
//
//  Created by Felipe on 6/5/22.
//

#import "TestString.h"

@implementation TestString
    
    +(void) testString:(NSString*)string {
        
        if (string == nil) {
            string = @"Defensive Coding works!";
        }

        NSString *newString = [[NSString alloc] initWithString:string];
        
        NSLog(@"ObjC: %@\n",newString);
    }
    
@end
