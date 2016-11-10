//
//  DetailController.h
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "City.h"

@interface DetailController : UIViewController

@property (nonatomic, retain) City *city;

- (instancetype)initWithCity:(City *)city;

@end
