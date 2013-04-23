//
//  MTTextHeightUtil.h
//  
//
//  Created by Tetsutaro Murakami on 12/07/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

/**
 * @brief UITextViewのコンテンツ高さを求めるクラス
 *
 */


#import <Foundation/Foundation.h>

@interface MTTextHeightUtil : NSObject

+ (id)sharedInstance;

- (CGFloat)heightOfTextView:(NSString *)text 
                   WithFont:(UIFont *)font 
                   AndWidth:(float)width;

- (CGFloat)heightOfLabel:(NSString *)text
                WithFont:(UIFont *)font
                AndWidth:(float)width;

@end
