//
//  City.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "City.h"

@interface City ()

@end


@implementation City

- (instancetype)initWithCityName:(NSString *)cityName weatherDescription:(NSString *)weather temperature:(int)temperature precipitation:(int)precipitation humidity:(int)humidity andWind:(int)wind
{
    self = [super init];
    if(self)
    {
        _cityName = cityName;
        _weatherDescription = weather;
        _temperature = temperature;
        _precipitation = precipitation;
        _humidity = humidity;
        _wind = wind;
    }
    return self;
}

@end
