//
//  DetailController.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "DetailController.h"

@implementation DetailController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if(self)
    {
        _city = city;
        self.view.backgroundColor = [UIColor orangeColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *weatherReport = [NSString stringWithFormat:@"Weather: %@ \nTemperature: %d degrees celsius \nPrecipitation: %d%% \nHumidity: %d%% \nWind: %d km/hr", self.city.weatherDescription, self.city.temperature, self.city.precipitation, self.city.humidity, self.city.wind];
    [self viewText:weatherReport];
}


- (void)viewText:(NSString *)text
{
    UILabel *descriptionLabel = [[UILabel alloc] init];
    descriptionLabel.translatesAutoresizingMaskIntoConstraints = NO;
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
    
    descriptionLabel.numberOfLines = 5;
    descriptionLabel.text = text;
}

@end
