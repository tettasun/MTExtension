//
//  MTMiniIndicator.m
//  
//
//  Created by Tetsutaro Murakami on 12/07/31.
//
//

#import "MTMiniIndicator.h"
#import <QuartzCore/QuartzCore.h>
#import "UIView+MTExtension.h"

@implementation MTMiniIndicator

- (id)initWithSize:(CGSize)size
{
    self = [self initWithFrame:ccr(0,0,size.width,size.height)];
    
    return self;
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = CLEAR_COLOR;
        
        UIView *miniIndicatorBase = VIEW_INIT_R(ccr(0,0,100,100));
        miniIndicatorBase.backgroundColor = BLACK_COLOR;
        miniIndicatorBase.alpha = 0.6;
        [self addSubview:miniIndicatorBase];
    
        miniIndicatorBase.layer.cornerRadius = 5;
        miniIndicatorBase.clipsToBounds = true;
        
        
        self.indicator =
        [[UIActivityIndicatorView alloc]
         initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
        self.indicator.center = super.center;
        self.indicator.height = self.indicator.height - 44;
        [self addSubview:self.indicator];
        
        miniIndicatorBase.center = self.indicator.center;
        
        [self.indicator startAnimating];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
