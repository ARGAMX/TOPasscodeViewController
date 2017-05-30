//
//  TOPasscodeViewControllerAnimatedTransitioning.h
//  TOPasscodeViewControllerExample
//
//  Created by Tim Oliver on 5/15/17.
//  Copyright © 2017 Timothy Oliver. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class TOPasscodeViewController;

NS_ASSUME_NONNULL_BEGIN

@interface TOPasscodeViewControllerAnimatedTransitioning : NSObject <UIViewControllerAnimatedTransitioning>

@property (nonatomic, weak, readonly) TOPasscodeViewController *passcodeViewController;
@property (nonatomic, assign) BOOL dismissing;

- (instancetype)initWithPasscodeViewController:(TOPasscodeViewController *)passcodeViewController dismissing:(BOOL)dismissing;

@end

NS_ASSUME_NONNULL_END
