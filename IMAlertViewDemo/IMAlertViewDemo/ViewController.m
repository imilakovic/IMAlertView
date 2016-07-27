//
//  ViewController.m
//  IMAlertViewDemo
//
//  Created by Igor Milakovic on 27/07/16.
//  Copyright © 2016 Igor Milakovic. All rights reserved.
//

#import "ViewController.h"

#import "DemoAlertView.h"

@interface ViewController () <IMAlertViewDelegate>

@end


@implementation ViewController

#pragma mark - Button actions

- (IBAction)firstAlertButtonTapped:(UIButton *)sender {
    [[[IMAlertView alloc] initWithTitleImage:nil message:@"This is an example of\ndefault alert view!" delegate:nil cancelButtonTitle:nil confirmButtonTitle:nil] show];
}


- (IBAction)secondAlertButtonTapped:(UIButton *)sender {
    [[[DemoAlertView alloc] initWithTitleImage:[UIImage imageNamed:@"0459-bubble-notification"]
                                       message:@"This is an example of\ncustomized alert view!"
                                      delegate:self
                             cancelButtonTitle:@"Cancel"
                            confirmButtonTitle:@"OK"] show];
}


#pragma mark - IMAlertViewDelegate

- (void)im_alertView:(IMAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"%s %li", __PRETTY_FUNCTION__, (long)buttonIndex);
}


- (void)im_alertView:(IMAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex {
    NSLog(@"%s %li", __PRETTY_FUNCTION__, (long)buttonIndex);
}


@end
