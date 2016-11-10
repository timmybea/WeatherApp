//
//  City.h
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface City : NSObject

@property (nonatomic) NSString *cityName;

@property (nonatomic) NSString *weatherDescription;
@property (nonatomic) int temperature;
@property (nonatomic) int precipitation;
@property (nonatomic) int humidity;
@property (nonatomic) int wind;

- (instancetype)initWithCityName:(NSString *)cityName weatherDescription:(NSString *)weather temperature:(int)temperature precipitation:(int)precipitation humidity:(int)humidity andWind:(int)wind;

@end
