//
//  MTUtill.m
//  
//
//  Created by Tetsutaro Murakami on 13/03/15.
//  Copyright (c) 2013年 Tetsutaro Murakami. All rights reserved.
//

#import "MTUtill.h"

@implementation MTUtill

+(void) showAlert:(NSString *)title message:(NSString *)message
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title
                                                    message:message
                                                   delegate:nil
                                          cancelButtonTitle:nil
                                          otherButtonTitles:@"OK", nil];
    [alert show];
}

@end
