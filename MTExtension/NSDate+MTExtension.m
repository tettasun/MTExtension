//
//  NSDate+MTExtension.m
//  
//
//  Created by Tetsutaro Murakami on 12/06/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSDate+MTExtension.h"

@implementation NSDate (NSDate_MTExtension)

- (NSDate *) toLocalTime
{
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger seconds = [tz secondsFromGMTForDate: self];
    return [NSDate dateWithTimeInterval: seconds sinceDate: self];
}

- (NSDate *) toGlobalTime
{
    NSTimeZone *tz = [NSTimeZone defaultTimeZone];
    NSInteger seconds = -[tz secondsFromGMTForDate: self];
    return [NSDate dateWithTimeInterval: seconds sinceDate: self];
}

+ (float)timezoneOffset
{
    NSTimeZone *zone = [NSTimeZone localTimeZone];
    float offset = [zone secondsFromGMT]/3600.0;
    return offset;
}



@end
