//
//  NSDate+MTExtension.h
//  
//
//  Created by Tetsutaro Murakami on 12/06/25.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (NSDate_MTExtension)

- (NSDate *)toLocalTime;
- (NSDate *)toGlobalTime;
+ (float)timezoneOffset;

@end
