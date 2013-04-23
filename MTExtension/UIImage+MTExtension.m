//
//  UIImage+MTExtension.m
//  
//
//  Created by Tetsutaro Murakami on 12/07/21.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "UIImage+MTExtension.h"

@implementation UIImage (UIImage_MTExtension)

- (CGSize)adjustedSizeWithWidth:(float)width
{
    LOG_FUNC
    
    
    LOG(@"size h%f w%f",self.size.height,self.size.width);
    
    float adjustedHeight = (width * self.size.height) / self.size.width ;

    return CGSizeMake(width, adjustedHeight);
}


@end
