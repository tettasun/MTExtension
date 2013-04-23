//
//  UITextView+MTExtension.m
//  
//
//  Created by Tetsutaro Murakami on 13/03/15.
//  Copyright (c) 2013年 Tetsutaro Murakami. All rights reserved.
//

#import "UITextView+MTExtension.h"

@implementation UITextView (UITextView_MTExtension)

- (CGFloat)heightOfContents:(NSString *)text
{
    UITextView *textView = [self copy];
    
    float height = textView.contentSize.height;
    
    return height;
}

@end
