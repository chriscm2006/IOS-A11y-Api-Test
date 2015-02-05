//
//  MyAccessibilityContainer.m
//  TestSegmentedControl
//
//  Created by Chris McMeeking on 2/5/15.
//  Copyright (c) 2015 Chris McMeeking. All rights reserved.
//

#import "MyAccessibilityContainer.h"

@implementation MyAccessibilityContainer

- (NSInteger) accessibilityElementCount {
    NSInteger val = [[self subviews] count];
    NSLog(@"accessibilityElementCount === %lu", val);
    return val;
}

- (id)accessibilityElementAtIndex:(NSInteger)index {
    id object =[[self subviews] objectAtIndex:index];
    NSLog(@"accessibilityElementAtIndex:%lu === %@", index, object);
    return object;
}

- (NSInteger) indexOfAccessibilityElement:(id)element {
    NSInteger val = [[self subviews] indexOfObject:element];
    NSLog(@"indexOfAccessibilityElement:%@ === %lu", element, val);
    return val;
}

@end
