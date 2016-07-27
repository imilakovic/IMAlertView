//
//  DemoAlertView.m
//  IMAlertViewDemo
//
//  Created by Igor Milakovic on 27/07/16.
//  Copyright © 2016 Igor Milakovic. All rights reserved.
//

#import "DemoAlertView.h"

@implementation DemoAlertView

#pragma mark - Init

- (instancetype)initWithTitleImage:(UIImage *)titleImage
                           message:(NSString *)message
                          delegate:(id<IMAlertViewDelegate>)delegate
                 cancelButtonTitle:(NSString *)cancelButtonTitle
                confirmButtonTitle:(NSString *)confirmButtonTitle {
    self = [super initWithTitleImage:titleImage message:message delegate:delegate cancelButtonTitle:cancelButtonTitle confirmButtonTitle:confirmButtonTitle];
    if (self) {
        self.backgroundColor = [UIColor whiteColor];
        
        self.messageLabel.font = [UIFont fontWithName:@"Noteworthy-Light" size:14.0];
        self.messageLabel.textColor = [UIColor blackColor];
        
        self.cancelButton.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.9];
        self.cancelButton.titleLabel.font = [UIFont fontWithName:@"Noteworthy-Light" size:16.0];
        [self.cancelButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        
        self.confirmButton.backgroundColor = [UIColor colorWithWhite:0.9 alpha:0.9];
        self.confirmButton.titleLabel.font = [UIFont fontWithName:@"Noteworthy-Bold" size:16.0];
        [self.confirmButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    }
    return self;
}


@end
