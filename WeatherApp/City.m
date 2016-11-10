//
//  City.m
//  WeatherApp
//
//  Created by Tim Beals on 2016-11-09.
//  Copyright © 2016 Tim Beals. All rights reserved.
//

#import "City.h"

@interface City ()

@property (nonatomic) NSString *weatherDescription;
@property (nonatomic) int temperature;

@end


@implementation City

- (instancetype)initWithCityName:(NSString *)cityName weatherDescription:(NSString *)weather andTemperature:(int)temperature
{
    self = [super init];
    if(self)
    {
        _cityName = cityName;
        _weatherDescription = weather;
        _temperature = temperature;
    }
    return self;
}

@end
