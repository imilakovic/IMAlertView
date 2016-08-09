# IMAlertView

<img src="http://res.cloudinary.com/foosh/image/upload/v1469647132/alert_view_vjndhf.gif"/>

<b>IMAlertView</b> is an iOS custom alert view with animation.

## Requirements

- Requires iOS 7 or later
- Requires Automatic Reference Counting (ARC)

## Demo Project

Please feel free to try the IMAlertViewDemo project in Xcode. It demonstrates a simple setup of the alert view.

## Installation

### CocoaPods
If you are using [CocoaPods](http://www.cocoapods.org), simply add `pod 'IMAlertView'` to your Podfile.

### Drag & Drop
Simply drag & drop the `IMAlertView` folder to your project.

## Usage

IMAlertView has a very similar usage to UIAlertView. Please see the following steps:

####1. Import the header file

```objective-c
#import "IMAlertView.h"
```

####2. Show the alert view

```objective-c
[[[IMAlertView alloc] initWithTitleImage:[UIImage imageNamed:@"someImage"]
                                 message:@"some message"
                                delegate:nil
                       cancelButtonTitle:@"Cancel"
                      confirmButtonTitle:@"OK"] show];
```

In case you wanted to customize the alert view, I would recommend subclassing it - simply by overriding the init method. Please see the example below:

```objective-c
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
```

## License

IMAlertView is available under the MIT license. See the LICENSE file for more info.
