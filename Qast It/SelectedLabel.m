//
//  SelectedLabel.m
//  Qast It
//
//  Created by Riccardo Scanavacca on 26/11/2015.
//  Copyright © 2015 Riccardo Scanavacca. All rights reserved.
//

#import "SelectedLabel.h"

@implementation SelectedLabel

- (void)drawTextInRect:(CGRect)rect {
    UIEdgeInsets insets = {0, 70, 0, 0};
    [super drawTextInRect:UIEdgeInsetsInsetRect(rect, insets)];
}

@end
