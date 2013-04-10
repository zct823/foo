//
//  UIColor+ExtraMethod.m
//  myjam
//
//  Created by nazri on 11/26/12.
//  Copyright (c) 2012 me-tech. All rights reserved.
//

#import "UIColor+ExtraMethod.h"

@implementation UIColor (ExtraMethod)

+ (UIColor*)colorWithHex:(NSString*)hexString
{
        unsigned rgbValue = 0;
        NSScanner *scanner = [NSScanner scannerWithString:hexString];
        [scanner setScanLocation:1]; // bypass '#' character
        [scanner scanHexInt:&rgbValue];
        return [UIColor colorWithRed:((rgbValue & 0xFF0000) >> 16)/255.0 green:((rgbValue & 0xFF00) >> 8)/255.0 blue:(rgbValue & 0xFF)/255.0 alpha:1.0];
    }

@end
