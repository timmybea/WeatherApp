//
//  CityViewController.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "CityViewController.h"


@interface CityViewController ()

@property (nonatomic) City *city;
@property (nonatomic) UILabel *decriptionLabel;

@end

@implementation CityViewController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if(self)
    {
        _city = city;
        self.title = city.cityName; //the title is applied to both the nav bar and the tab bar.
        self.view.backgroundColor = [UIColor grayColor];
        //Add funtions for view objects
        [self createView];
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    //
}

- (void)createView {
    UILabel *descriptionLabel = [[UILabel alloc] init];
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
    descriptionLabel.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:descriptionLabel];
    
    NSLayoutConstraint *labelCentreX = [NSLayoutConstraint constraintWithItem:descriptionLabel
                                                                  attribute:NSLayoutAttributeCenterX
                                                                  relatedBy:NSLayoutRelationEqual
                                                                     toItem:self.view
                                                                  attribute:NSLayoutAttributeCenterX
                                                                 multiplier:1
                                                                   constant:0];

    NSLayoutConstraint *labelCentreY = [NSLayoutConstraint constraintWithItem:descriptionLabel
                                                                   attribute:NSLayoutAttributeCenterY
                                                                   relatedBy:NSLayoutRelationEqual
                                                                      toItem:self.view
                                                                   attribute:NSLayoutAttributeCenterY
                                                                  multiplier:1
                                                                    constant:0];
    
    NSLayoutConstraint *labelWidth = [NSLayoutConstraint constraintWithItem:descriptionLabel
                                                                    attribute:NSLayoutAttributeWidth
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:nil                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1
                                                                     constant:300];

    NSLayoutConstraint *labelHeight = [NSLayoutConstraint constraintWithItem:descriptionLabel
                                                                    attribute:NSLayoutAttributeHeight
                                                                    relatedBy:NSLayoutRelationEqual
                                                                       toItem:nil
                                                                    attribute:NSLayoutAttributeNotAnAttribute
                                                                   multiplier:1
                                                                     constant:200];

    [self.view addConstraint:labelCentreX];
    [self.view addConstraint:labelCentreY];
    [self.view addConstraint:labelWidth];
    [self.view addConstraint:labelHeight];
    
    descriptionLabel.text = [NSString stringWithFormat:@"%@", self.title];
    
    
}






@end
