//
//  CityViewController.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "CityViewController.h"
#import "DetailController.h"

@interface CityViewController ()

@property (nonatomic, retain) City *city;
@property (nonatomic) UILabel *decriptionLabel;

@end

@implementation CityViewController

- (instancetype)initWithCity:(City *)city
{
    self = [super init];
    if(self)
    {
        _city = city;
        self.title = city.cityName; //the title is applied to both the nav bar and the tab bar!
        self.view.backgroundColor = [UIColor grayColor];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSString *weatherReport = [NSString stringWithFormat:@"City: %@ \nWeather: %@ \nTemperature: %d", self.city.cityName, self.city.weatherDescription, self.city.temperature];
    [self viewText:weatherReport];
    [self createButton];
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
    
    descriptionLabel.numberOfLines = 4;
    descriptionLabel.text = text;
}

- (void)createButton
{
    UIBarButtonItem *detailButton = [[UIBarButtonItem alloc] initWithTitle:@"Detail" style:UIBarButtonItemStylePlain target:self action:@selector(showDetails)];
    self.navigationItem.rightBarButtonItem = detailButton;
}

- (void)showDetails
{
    DetailController *detailController = [[DetailController alloc] initWithCity:self.city];
    [[self navigationController] pushViewController:detailController animated:YES];
}

@end
