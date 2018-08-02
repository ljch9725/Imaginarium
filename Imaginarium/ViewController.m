//
//  ViewController.m
//  Imaginarium
//
//  Created by 李键超 on 2018/8/1.
//  Copyright © 2018年 李键超. All rights reserved.
//

#import "ViewController.h"
#import "ImageViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.destinationViewController isKindOfClass:[ImageViewController class]]) {
        ImageViewController *ivc = (ImageViewController *)segue.destinationViewController;
        ivc.imageURL = [NSURL URLWithString:[NSString stringWithFormat:@"http://images.apple.com/v/iphone-x/e/images/overview/primary/design_%@_large_2x.jpg", segue.identifier]];
        ivc.title = segue.identifier;
    }
}

@end
