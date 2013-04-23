//
//  MTTextHeightUtil.m
//  
//
//  Created by Tetsutaro Murakami on 12/07/13.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "MTTextHeightUtil.h"
#import "UIView+MTExtension.h"

@interface MTTextHeightUtil()
{
    UIView *_view;
    UITextView *_textView;
}
@end

@implementation MTTextHeightUtil

+ (id)sharedInstance
{
    static MTTextHeightUtil* _instance = nil;
    if (!_instance) {
        _instance = [[MTTextHeightUtil alloc] init];
    }
    return _instance;
}

- (id)init
{
    LOG_FUNC
    
    if (self = [super init]) {
        
        _view = VIEW_INIT_R(ccr(0,0,320,10000));
        _textView = TEXTVIEW_INIT_R(CGRectZero);
        _textView.contentInset = UIEdgeInsetsMake(-11,-8,0,0);
        [_view addSubview:_textView];
    }
    
    return self;
}

- (CGFloat)heightOfTextView:(NSString *)text 
                   WithFont:(UIFont *)font 
                   AndWidth:(float)width
{
    _textView.width = width;
    _textView.font = font;
    _textView.text = text;
    
    float height = _textView.contentSize.height;
    
    LOG(@"height %f",height);
    
    
    return height;
}

- (CGFloat)heightOfLabel:(NSString *)text
                WithFont:(UIFont *)font
                AndWidth:(float)width
{
    LOG_FUNC
    
    CGSize  textSize = { width, 10000.0 };
    
    CGSize size = [text sizeWithFont:font constrainedToSize:textSize lineBreakMode:UILineBreakModeWordWrap];
    
    LOG(@"height %f",size.height);
    
    return size.height;
}

@end
