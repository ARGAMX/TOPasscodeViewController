//
//  TOPINCircleView.m
//  TOPINViewControllerExample
//
//  Created by Tim Oliver on 5/15/17.
//  Copyright © 2017 Timothy Oliver. All rights reserved.
//

#import "TOPINCircleView.h"

@interface TOPINCircleView ()
@property (nonatomic, strong) UIImageView *bottomView;
@property (nonatomic, strong) UIImageView *topView;
@end

@implementation TOPINCircleView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.bottomView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.bottomView.userInteractionEnabled = NO;
        self.bottomView.contentMode = UIViewContentModeScaleAspectFit;
        self.bottomView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        [self addSubview:self.bottomView];

        self.topView = [[UIImageView alloc] initWithFrame:self.bounds];
        self.topView.userInteractionEnabled = NO;
        self.topView.contentMode = UIViewContentModeScaleAspectFit;
        self.topView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
        self.topView.alpha = 0.0f;
        [self addSubview:self.topView];
    }

    return self;
}

- (void)setIsHighlighted:(BOOL)isHighlighted
{
    [self setHighlighted:isHighlighted animated:NO];
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
    if (highlighted == self.isHighlighted) { return; }

    _isHighlighted = highlighted;

    if (!animated) {
        self.topView.alpha = highlighted ? 1.0f : 0.0f;
        return;
    }

    [UIView animateWithDuration:0.5f animations:^{
        self.topView.alpha = highlighted ? 1.0f : 0.0f;
    }];
}

- (void)setCircleImage:(UIImage *)circleImage
{
    _circleImage = circleImage;
    self.bottomView.image = circleImage;
}

- (void)setHighlightedCircleImage:(UIImage *)highlightedCircleImage
{
    _highlightedCircleImage = highlightedCircleImage;
    self.topView.image = highlightedCircleImage;
}

@end
