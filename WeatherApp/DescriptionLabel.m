//
//  DescriptionLabel.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "DescriptionLabel.h"

@implementation DescriptionLabel

//UIFont * customFont = [UIFont fontWithName:ProximaNovaSemibold size:12]; //custom font
//NSString * text = [self fromSender];
//
//CGSize labelSize = [text sizeWithFont:customFont constrainedToSize:CGSizeMake(380, 20) lineBreakMode:NSLineBreakByTruncatingTail];
//
//UILabel *fromLabel = [[UILabel alloc]initWithFrame:CGRectMake(91, 15, labelSize.width, labelSize.height)];
//fromLabel.text = text;
//fromLabel.font = customFont;
//fromLabel.numberOfLines = 1;
//fromLabel.baselineAdjustment = UIBaselineAdjustmentAlignBaselines; // or UIBaselineAdjustmentAlignCenters, or UIBaselineAdjustmentNone
//fromLabel.adjustsFontSizeToFitWidth = YES;
//fromLabel.adjustsLetterSpacingToFitWidth = YES;
//fromLabel.minimumScaleFactor = 10.0f/12.0f;
//fromLabel.clipsToBounds = YES;
//fromLabel.backgroundColor = [UIColor clearColor];
//fromLabel.textColor = [UIColor blackColor];
//fromLabel.textAlignment = NSTextAlignmentLeft;
//[collapsedViewContainer addSubview:fromLabel];
//
//**********

//
//UILabel *descriptionLabel = [[UILabel alloc] initWithFrame:CGRectZero];
//descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
//descriptionLabel.backgroundColor = [UIColor orangeColor];
//[self.view addSubview:descriptionLabel];
//
//NSLayoutConstraint *orangeBigBoxLMargin = [NSLayoutConstraint constraintWithItem:orangeBigBox
//                                                                       attribute:NSLayoutAttributeLeftMargin
//                                                                       relatedBy:NSLayoutRelationEqual
//                                                                          toItem:redBox
//                                                                       attribute:NSLayoutAttributeLeftMargin
//                                                                      multiplier:1
//                                                                        constant:10];
//
//NSLayoutConstraint *orangeBigBoxTopMargin = [NSLayoutConstraint constraintWithItem:orangeBigBox
//                                                                         attribute:NSLayoutAttributeTopMargin
//                                                                         relatedBy:NSLayoutRelationEqual
//                                                                            toItem:redBox
//                                                                         attribute:NSLayoutAttributeTopMargin
//                                                                        multiplier:1
//                                                                          constant:10];
//
//NSLayoutConstraint *orangeBigBoxWidth = [NSLayoutConstraint constraintWithItem:orangeBigBox
//                                                                     attribute:NSLayoutAttributeWidth
//                                                                     relatedBy:NSLayoutRelationEqual
//                                                                        toItem:nil
//                                                                     attribute:NSLayoutAttributeNotAnAttribute
//                                                                    multiplier:1
//                                                                      constant:70];
//
//NSLayoutConstraint *orangeBigBoxHeight = [NSLayoutConstraint constraintWithItem:orangeBigBox
//                                                                      attribute:NSLayoutAttributeHeight
//                                                                      relatedBy:NSLayoutRelationEqual
//                                                                         toItem:nil
//                                                                      attribute:NSLayoutAttributeNotAnAttribute
//                                                                     multiplier:1
//                                                                       constant:30];
//
//[redBox addConstraint:orangeBigBoxLMargin];
//[redBox addConstraint:orangeBigBoxTopMargin];
//[redBox addConstraint:orangeBigBoxWidth];
//[redBox addConstraint:orangeBigBoxHeight];
//
//
//

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
