//
//  ViewController.m
//  TestSegmentedControl
//
//  Created by Chris McMeeking on 2/4/15.
//  Copyright (c) 2015 Chris McMeeking. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *layoutChangedButton;
@property (weak, nonatomic) IBOutlet UIButton *nietherButton;
@property (weak, nonatomic) IBOutlet UIButton *screenChangedButton;
@property (weak, nonatomic) IBOutlet UIImageView *image;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"Blargedy");

    [self.layoutChangedButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.nietherButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.screenChangedButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];

    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonAction:(id)sender {
    NSLog(@"Segmented Control Action: %d", [self.image isHidden]);
    
    [self.image setHidden:![self.image isHidden]];
    
    if (self.layoutChangedButton == sender) {
        NSLog(@"LayoutChanged Event sent");
        UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, @"layout changed blargedy");
    } else if (self.screenChangedButton == sender) {
        NSLog(@"ScreenChagned Event Sent");
        UIAccessibilityPostNotification(UIAccessibilityScreenChangedNotification, @"Screen changed blargedy");
    } else {
        NSLog(@"Neither Event sent");
    }
}

@end
